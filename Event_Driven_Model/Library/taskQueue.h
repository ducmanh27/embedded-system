/*
 * taskQueue.h
 *
 *  Created on: Jan 6, 2024
 *      Author: DUNG
 */

#ifndef TASKQUEUE_H_
#define TASKQUEUE_H_
#include<stdint.h>
#include<stdio.h>

#define QUEUE_BUFFER_SIZE   (20)
#define QUEUE_END           (QUEUE_BUFFER_SIZE - 1)
#define QUEUE_NEXT(p)       ((int8_t)(((p)+1) % QUEUE_BUFFER_SIZE))
#define QUEUE_BEFORE(p)     ((int8_t)((p) == 0 ? (p-1): (QUEUE_END)))

/* the type of task in the queue*/
typedef struct{
	void(*taskHandler)(void);
	uint32_t Deadline;
} Task_t;

typedef enum
{
	QUEUE_INIT_FAIL = 0u,
	QUEUE_INIT_SUCCESS,

	QUEUE_INSERT_FAIL,
	QUEUE_INSERT_SUCCESS,

	QUEUE_NOT_EMPTY,
	QUEUE_EMPTY,

	QUEUE_NOT_FULL,
	QUEUE_FULL,
} taskQueueState_t;


/*Init a Queue
 * Param 1: array of tasks,
 * Param 2: num of tasks
 * */

taskQueueState_t taskQueueInit(Task_t * pTasks, uint32_t taskNum);

//  DeInit Queue before restart the program
void taskQueueDeInit(void);
// Reset Queue when all tasks has run and queue empty
void taskQueueReset(void);



/*Check the state of the Queue */
taskQueueState_t taskQueueIsFull(void);
taskQueueState_t taskQueueIsEmpty(void);
uint8_t taskQueueGetLen(void);


/*EnQueue and DeQueue*/

/*this function insert task to queue
 * Task is insert based on the deadline priority
 * If 2 tasks have the same deadline, insert based on WCET
 * The task has smaller deadline and WCET go first*/

taskQueueState_t taskQueueInsert(Task_t * pTask);

/*return the task to perform*/
Task_t taskQueuePop();


#endif /* TASKQUEUE_H_ */
