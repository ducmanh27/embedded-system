/*
 * taskQueue.c
 *
 *  Created on: Jan 6, 2024
 *      Author: DUNG
 */
#include"taskQueue.h"

static volatile Task_t taskQueue[QUEUE_BUFFER_SIZE];

static Task_t * pAllTasks = NULL;
static uint32_t numOfTasks = 0u;
static volatile int8_t queueFront = -1;
static volatile int8_t queueRear = -1;
static volatile uint8_t queueLen = 0u;

static inline void queueUpdateNewTask(Task_t* pTask, int8_t position)
{
	int8_t tempQueueNext = QUEUE_NEXT(queueRear);
	int8_t tempQueueCurr = queueRear;

	while(tempQueueNext != position)
	{
		taskQueue[tempQueueNext] = taskQueue[tempQueueCurr];
		tempQueueNext = tempQueueCurr;
		tempQueueCurr = QUEUE_BEFORE(tempQueueCurr);
	}
	taskQueue[position] = *pTask;
}
taskQueueState_t taskQueueInsert(Task_t * pTask)
{
	if(taskQueueIsFull() == QUEUE_FULL)
	{
		return QUEUE_INSERT_FAIL;
	}
	else if(taskQueueIsEmpty() == QUEUE_EMPTY)
	{
		queueFront = 0;
		queueRear = 0;
		taskQueue[queueRear] = *pTask;
	}
	else if(queueLen == 1u)
	{
		queueRear = QUEUE_NEXT(queueRear);
		if(taskQueue[queueFront].Deadline < pTask->Deadline)
		{
			taskQueue[queueRear] = *pTask;
		}
		else
		{
			taskQueue[queueRear] = taskQueue[queueFront];
			taskQueue[queueFront] = *pTask;
		}
	}
	else
	{
		int8_t tempQueueParser = queueFront;
		// parse from front to end
		while(tempQueueParser != queueRear)
		{
			// next until the deadline of the next task is bigger
			if (taskQueue[tempQueueParser].Deadline < pTask->Deadline)
			{
				tempQueueParser = QUEUE_NEXT(tempQueueParser);
				continue;
			}
			else
			{
				queueUpdateNewTask(pTask, tempQueueParser);
				break;
			}
			tempQueueParser = QUEUE_NEXT(tempQueueParser);
		}
	}
	queueLen++;
	return QUEUE_INSERT_SUCCESS;
}

taskQueueState_t taskQueueInit(Task_t * pTasks, uint32_t taskNum)
{
	if (pTasks == NULL)
	{
		return QUEUE_INIT_FAIL;
	}
	pAllTasks = pTasks;
	numOfTasks = taskNum;
	return QUEUE_INIT_SUCCESS;
}
void taskQueueDeInit(void)
{
	queueFront = -1;
	queueRear = -1;
	queueLen = 0u;
	pAllTasks = NULL;
	numOfTasks = 0u;
}

void taskQueueReset(void)
{
	queueFront = -1;
	queueRear = -1;
	queueLen = 0;
}

taskQueueState_t taskQueueIsFull(void)
{
	if( QUEUE_NEXT(queueRear) == queueFront )
	{
		return QUEUE_FULL;
	}
	else
	{
		return QUEUE_NOT_FULL;
	}
}

taskQueueState_t taskQueueIsEmpty(void)
{
	if(queueFront == -1)
	{
		return QUEUE_EMPTY;
	}
	return QUEUE_NOT_EMPTY;
}

uint8_t taskQueueGetLen(void)
{
	return queueLen;
}


Task_t taskQueuePop()
{
	Task_t retVal = taskQueue[queueFront];
	taskQueue[queueFront] = (Task_t) {.taskHandler = NULL, 0};
	if(queueLen == 1u)
	{
		taskQueueReset();
	}
	else
	{
		queueFront = QUEUE_NEXT(queueFront);
		queueLen--;
	}
	return retVal;
}


