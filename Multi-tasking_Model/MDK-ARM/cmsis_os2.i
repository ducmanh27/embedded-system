#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"






















 

#line 1 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\string.h"



 

#line 26 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.h"






















 




#line 41 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.h"

#line 1 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdint.h"






 
#line 43 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.h"
#line 1 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



 

#line 44 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.h"










typedef struct {
  uint32_t                       api;   
  uint32_t                    kernel;   
} osVersion_t;


typedef enum {
  osKernelInactive        =  0,         
  osKernelReady           =  1,         
  osKernelRunning         =  2,         
  osKernelLocked          =  3,         
  osKernelSuspended       =  4,         
  osKernelError           = -1,         
  osKernelReserved        = 0x7FFFFFFFU 
} osKernelState_t;


typedef enum {
  osThreadInactive        =  0,         
  osThreadReady           =  1,         
  osThreadRunning         =  2,         
  osThreadBlocked         =  3,         
  osThreadTerminated      =  4,         
  osThreadError           = -1,         
  osThreadReserved        = 0x7FFFFFFF  
} osThreadState_t;


typedef enum {
  osPriorityNone          =  0,         
  osPriorityIdle          =  1,         
  osPriorityLow           =  8,         
  osPriorityLow1          =  8+1,       
  osPriorityLow2          =  8+2,       
  osPriorityLow3          =  8+3,       
  osPriorityLow4          =  8+4,       
  osPriorityLow5          =  8+5,       
  osPriorityLow6          =  8+6,       
  osPriorityLow7          =  8+7,       
  osPriorityBelowNormal   = 16,         
  osPriorityBelowNormal1  = 16+1,       
  osPriorityBelowNormal2  = 16+2,       
  osPriorityBelowNormal3  = 16+3,       
  osPriorityBelowNormal4  = 16+4,       
  osPriorityBelowNormal5  = 16+5,       
  osPriorityBelowNormal6  = 16+6,       
  osPriorityBelowNormal7  = 16+7,       
  osPriorityNormal        = 24,         
  osPriorityNormal1       = 24+1,       
  osPriorityNormal2       = 24+2,       
  osPriorityNormal3       = 24+3,       
  osPriorityNormal4       = 24+4,       
  osPriorityNormal5       = 24+5,       
  osPriorityNormal6       = 24+6,       
  osPriorityNormal7       = 24+7,       
  osPriorityAboveNormal   = 32,         
  osPriorityAboveNormal1  = 32+1,       
  osPriorityAboveNormal2  = 32+2,       
  osPriorityAboveNormal3  = 32+3,       
  osPriorityAboveNormal4  = 32+4,       
  osPriorityAboveNormal5  = 32+5,       
  osPriorityAboveNormal6  = 32+6,       
  osPriorityAboveNormal7  = 32+7,       
  osPriorityHigh          = 40,         
  osPriorityHigh1         = 40+1,       
  osPriorityHigh2         = 40+2,       
  osPriorityHigh3         = 40+3,       
  osPriorityHigh4         = 40+4,       
  osPriorityHigh5         = 40+5,       
  osPriorityHigh6         = 40+6,       
  osPriorityHigh7         = 40+7,       
  osPriorityRealtime      = 48,         
  osPriorityRealtime1     = 48+1,       
  osPriorityRealtime2     = 48+2,       
  osPriorityRealtime3     = 48+3,       
  osPriorityRealtime4     = 48+4,       
  osPriorityRealtime5     = 48+5,       
  osPriorityRealtime6     = 48+6,       
  osPriorityRealtime7     = 48+7,       
  osPriorityISR           = 56,         
  osPriorityError         = -1,         
  osPriorityReserved      = 0x7FFFFFFF  
} osPriority_t;


typedef void (*osThreadFunc_t) (void *argument);


typedef void (*osTimerFunc_t) (void *argument);


typedef enum {
  osTimerOnce               = 0,          
  osTimerPeriodic           = 1           
} osTimerType_t;










#line 165 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.h"











typedef enum {
  osOK                      =  0,         
  osError                   = -1,         
  osErrorTimeout            = -2,         
  osErrorResource           = -3,         
  osErrorParameter          = -4,         
  osErrorNoMemory           = -5,         
  osErrorISR                = -6,         
  osStatusReserved          = 0x7FFFFFFF  
} osStatus_t;



typedef void *osThreadId_t;


typedef void *osTimerId_t;


typedef void *osEventFlagsId_t;


typedef void *osMutexId_t;


typedef void *osSemaphoreId_t;


typedef void *osMemoryPoolId_t;


typedef void *osMessageQueueId_t;





typedef uint32_t TZ_ModuleId_t;




typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
  void                   *stack_mem;    
  uint32_t                stack_size;   
  osPriority_t              priority;   
  TZ_ModuleId_t            tz_module;   
  uint32_t                  reserved;   
} osThreadAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
} osTimerAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
} osEventFlagsAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
} osMutexAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
} osSemaphoreAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
  void                      *mp_mem;    
  uint32_t                   mp_size;   
} osMemoryPoolAttr_t;


typedef struct {
  const char                   *name;   
  uint32_t                 attr_bits;   
  void                      *cb_mem;    
  uint32_t                   cb_size;   
  void                      *mq_mem;    
  uint32_t                   mq_size;   
} osMessageQueueAttr_t;






osStatus_t osKernelInitialize (void);






osStatus_t osKernelGetInfo (osVersion_t *version, char *id_buf, uint32_t id_size);



osKernelState_t osKernelGetState (void);



osStatus_t osKernelStart (void);



int32_t osKernelLock (void);



int32_t osKernelUnlock (void);




int32_t osKernelRestoreLock (int32_t lock);



uint32_t osKernelSuspend (void);



void osKernelResume (uint32_t sleep_ticks);



uint32_t osKernelGetTickCount (void);



uint32_t osKernelGetTickFreq (void);



uint32_t osKernelGetSysTimerCount (void);



uint32_t osKernelGetSysTimerFreq (void);









osThreadId_t osThreadNew (osThreadFunc_t func, void *argument, const osThreadAttr_t *attr);




const char *osThreadGetName (osThreadId_t thread_id);



osThreadId_t osThreadGetId (void);




osThreadState_t osThreadGetState (osThreadId_t thread_id);




uint32_t osThreadGetStackSize (osThreadId_t thread_id);




uint32_t osThreadGetStackSpace (osThreadId_t thread_id);





osStatus_t osThreadSetPriority (osThreadId_t thread_id, osPriority_t priority);




osPriority_t osThreadGetPriority (osThreadId_t thread_id);



osStatus_t osThreadYield (void);




osStatus_t osThreadSuspend (osThreadId_t thread_id);




osStatus_t osThreadResume (osThreadId_t thread_id);




osStatus_t osThreadDetach (osThreadId_t thread_id);




osStatus_t osThreadJoin (osThreadId_t thread_id);


__declspec(noreturn) void osThreadExit (void);




osStatus_t osThreadTerminate (osThreadId_t thread_id);



uint32_t osThreadGetCount (void);





uint32_t osThreadEnumerate (osThreadId_t *thread_array, uint32_t array_items);








uint32_t osThreadFlagsSet (osThreadId_t thread_id, uint32_t flags);




uint32_t osThreadFlagsClear (uint32_t flags);



uint32_t osThreadFlagsGet (void);






uint32_t osThreadFlagsWait (uint32_t flags, uint32_t options, uint32_t timeout);







osStatus_t osDelay (uint32_t ticks);




osStatus_t osDelayUntil (uint32_t ticks);










osTimerId_t osTimerNew (osTimerFunc_t func, osTimerType_t type, void *argument, const osTimerAttr_t *attr);




const char *osTimerGetName (osTimerId_t timer_id);





osStatus_t osTimerStart (osTimerId_t timer_id, uint32_t ticks);




osStatus_t osTimerStop (osTimerId_t timer_id);




uint32_t osTimerIsRunning (osTimerId_t timer_id);




osStatus_t osTimerDelete (osTimerId_t timer_id);







osEventFlagsId_t osEventFlagsNew (const osEventFlagsAttr_t *attr);




const char *osEventFlagsGetName (osEventFlagsId_t ef_id);





uint32_t osEventFlagsSet (osEventFlagsId_t ef_id, uint32_t flags);





uint32_t osEventFlagsClear (osEventFlagsId_t ef_id, uint32_t flags);




uint32_t osEventFlagsGet (osEventFlagsId_t ef_id);







uint32_t osEventFlagsWait (osEventFlagsId_t ef_id, uint32_t flags, uint32_t options, uint32_t timeout);




osStatus_t osEventFlagsDelete (osEventFlagsId_t ef_id);







osMutexId_t osMutexNew (const osMutexAttr_t *attr);




const char *osMutexGetName (osMutexId_t mutex_id);





osStatus_t osMutexAcquire (osMutexId_t mutex_id, uint32_t timeout);




osStatus_t osMutexRelease (osMutexId_t mutex_id);




osThreadId_t osMutexGetOwner (osMutexId_t mutex_id);




osStatus_t osMutexDelete (osMutexId_t mutex_id);









osSemaphoreId_t osSemaphoreNew (uint32_t max_count, uint32_t initial_count, const osSemaphoreAttr_t *attr);




const char *osSemaphoreGetName (osSemaphoreId_t semaphore_id);





osStatus_t osSemaphoreAcquire (osSemaphoreId_t semaphore_id, uint32_t timeout);




osStatus_t osSemaphoreRelease (osSemaphoreId_t semaphore_id);




uint32_t osSemaphoreGetCount (osSemaphoreId_t semaphore_id);




osStatus_t osSemaphoreDelete (osSemaphoreId_t semaphore_id);









osMemoryPoolId_t osMemoryPoolNew (uint32_t block_count, uint32_t block_size, const osMemoryPoolAttr_t *attr);




const char *osMemoryPoolGetName (osMemoryPoolId_t mp_id);





void *osMemoryPoolAlloc (osMemoryPoolId_t mp_id, uint32_t timeout);





osStatus_t osMemoryPoolFree (osMemoryPoolId_t mp_id, void *block);




uint32_t osMemoryPoolGetCapacity (osMemoryPoolId_t mp_id);




uint32_t osMemoryPoolGetBlockSize (osMemoryPoolId_t mp_id);




uint32_t osMemoryPoolGetCount (osMemoryPoolId_t mp_id);




uint32_t osMemoryPoolGetSpace (osMemoryPoolId_t mp_id);




osStatus_t osMemoryPoolDelete (osMemoryPoolId_t mp_id);









osMessageQueueId_t osMessageQueueNew (uint32_t msg_count, uint32_t msg_size, const osMessageQueueAttr_t *attr);




const char *osMessageQueueGetName (osMessageQueueId_t mq_id);







osStatus_t osMessageQueuePut (osMessageQueueId_t mq_id, const void *msg_ptr, uint8_t msg_prio, uint32_t timeout);







osStatus_t osMessageQueueGet (osMessageQueueId_t mq_id, void *msg_ptr, uint8_t *msg_prio, uint32_t timeout);




uint32_t osMessageQueueGetCapacity (osMessageQueueId_t mq_id);




uint32_t osMessageQueueGetMsgSize (osMessageQueueId_t mq_id);




uint32_t osMessageQueueGetCount (osMessageQueueId_t mq_id);




uint32_t osMessageQueueGetSpace (osMessageQueueId_t mq_id);




osStatus_t osMessageQueueReset (osMessageQueueId_t mq_id);




osStatus_t osMessageQueueDelete (osMessageQueueId_t mq_id);






#line 28 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"
#line 1 "../Drivers/CMSIS/Include/cmsis_compiler.h"
 




 
















 




#line 29 "../Drivers/CMSIS/Include/cmsis_compiler.h"



 
#line 1 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 




 
















 









 













   
   


 
#line 103 "../Drivers/CMSIS/Include/cmsis_armcc.h"

 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{





   return(0U);

}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{





  (void)fpscr;

}


 


 



 




 






 







 






 








 










 










 






                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 532 "../Drivers/CMSIS/Include/cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


#line 780 "../Drivers/CMSIS/Include/cmsis_armcc.h"

   


 



 

#line 862 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 


#line 35 "../Drivers/CMSIS/Include/cmsis_compiler.h"




 
#line 263 "../Drivers/CMSIS/Include/cmsis_compiler.h"




#line 29 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

























 






 
#line 35 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"













 
#line 50 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"





 
#line 1 "../Core/Inc/FreeRTOSConfig.h"
 

























 
 














 

 
 
 

 
#line 52 "../Core/Inc/FreeRTOSConfig.h"
  extern uint32_t SystemCoreClock;
#line 72 "../Core/Inc/FreeRTOSConfig.h"

 



 






 
#line 97 "../Core/Inc/FreeRTOSConfig.h"




 


 
#line 111 "../Core/Inc/FreeRTOSConfig.h"


 





 



 


 



 
 

 


 




 



 
 
 

#line 57 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"

























 







 
typedef void (*TaskFunction_t)( void * );



 












 




 











 
#line 110 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"


 



 








#line 60 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"

























 



 













 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"

























 












 











































































































































































#line 218 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"

#line 226 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"







#line 240 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"








































#line 46 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"




 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"

























 

















 

 
#line 54 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





	typedef uint32_t TickType_t;


	
 


 

 




 


 

 
#line 93 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"
 





 

 
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );

#line 111 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"

 

 

	extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );


 

 




#line 142 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"
 



 


 


	void vPortValidateInterruptPriority( void );



 








 

static __forceinline void vPortSetBASEPRI( uint32_t ulBASEPRI )
{
	__asm
	{
		
 
		msr basepri, ulBASEPRI
	}
}
 

static __forceinline void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI = ( 5 << (8 - 4) );

	__asm
	{
		
 
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}
}
 

static __forceinline void vPortClearBASEPRIFromISR( void )
{
	__asm
	{
		

 
		msr basepri, #0
	}
}
 

static __forceinline uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulReturn, ulNewBASEPRI = ( 5 << (8 - 4) );

	__asm
	{
		
 
		mrs ulReturn, basepri
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}

	return ulReturn;
}
 

static __forceinline BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;

	 
	__asm
	{
		mrs ulCurrentInterrupt, ipsr
	}

	if( ulCurrentInterrupt == 0 )
	{
		xReturn = ( ( BaseType_t ) 0 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 1 );
	}

	return xReturn;
}








#line 53 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"






































#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"

























 





 
#line 172 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"










#line 92 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"






 



	StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;


 
typedef struct HeapRegion
{
	uint8_t *pucStartAddress;
	size_t xSizeInBytes;
} HeapRegion_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;




 
void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 











#line 63 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 




 







 



























































































































































#line 239 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 


















































 

	
 




	
 




	
 




	
 




	 




	 




	
 




	



 




	


 




	


 




	


 




	


 















 





















































































































































































































































































































#line 708 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"




















































































































	
 



 


















#line 857 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
	
 







 





	








 




	
 




	
 



#line 917 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

	
 













 













 
struct xSTATIC_LIST_ITEM
{
	TickType_t xDummy1;
	void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

 
struct xSTATIC_MINI_LIST_ITEM
{
	TickType_t xDummy1;
	void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;

 
typedef struct xSTATIC_LIST
{
	UBaseType_t uxDummy1;
	void *pvDummy2;
	StaticMiniListItem_t xDummy3;
} StaticList_t;













 
typedef struct xSTATIC_TCB
{
	void				*pxDummy1;



	StaticListItem_t	xDummy3[ 2 ];
	UBaseType_t			uxDummy5;
	void				*pxDummy6;
	uint8_t				ucDummy7[ ( 16 ) ];
#line 1001 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
		UBaseType_t		uxDummy10[ 2 ];


		UBaseType_t		uxDummy12[ 2 ];
#line 1019 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
		uint32_t 		ulDummy18;
		uint8_t 		ucDummy19;


		uint8_t			uxDummy20;






} StaticTask_t;














 
typedef struct xSTATIC_QUEUE
{
	void *pvDummy1[ 3 ];

	union
	{
		void *pvDummy2;
		UBaseType_t uxDummy2;
	} u;

	StaticList_t xDummy3[ 2 ];
	UBaseType_t uxDummy4[ 3 ];
	uint8_t ucDummy5[ 2 ];


		uint8_t ucDummy6;







		UBaseType_t uxDummy8;
		uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;














 
typedef struct xSTATIC_EVENT_GROUP
{
	TickType_t xDummy1;
	StaticList_t xDummy2;


		UBaseType_t uxDummy3;



			uint8_t ucDummy4;


} StaticEventGroup_t;














 
typedef struct xSTATIC_TIMER
{
	void				*pvDummy1;
	StaticListItem_t	xDummy2;
	TickType_t			xDummy3;
	UBaseType_t			uxDummy4;
	void 				*pvDummy5[ 2 ];

		UBaseType_t		uxDummy6;



		uint8_t 		ucDummy7;


} StaticTimer_t;














 
typedef struct xSTATIC_STREAM_BUFFER
{
	size_t uxDummy1[ 4 ];
	void * pvDummy2[ 3 ];
	uint8_t ucDummy3;

		UBaseType_t uxDummy4;

} StaticStreamBuffer_t;

 
typedef StaticStreamBuffer_t StaticMessageBuffer_t;







#line 31 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"

























 









#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"

























 



























 



































 












 

	 
#line 134 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"




 
struct xLIST_ITEM
{
				 
	 TickType_t xItemValue;			 
	struct xLIST_ITEM *  pxNext;		 
	struct xLIST_ITEM *  pxPrevious;	 
	void * pvOwner;										 
	void *  pvContainer;				 
				 
};
typedef struct xLIST_ITEM ListItem_t;					 

struct xMINI_LIST_ITEM
{
				 
	 TickType_t xItemValue;
	struct xLIST_ITEM *  pxNext;
	struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
					 
	volatile UBaseType_t uxNumberOfItems;
	ListItem_t *  pxIndex;			 
	MiniListItem_t xListEnd;							 
					 
} List_t;







 








 








 









 








 







 







 







 








 




 





















 
#line 288 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"

















 










 







 






 











 
void vListInitialise( List_t * const pxList ) ;









 
void vListInitialiseItem( ListItem_t * const pxItem ) ;











 
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;



















 
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;







#line 37 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"







 















 
typedef void * TaskHandle_t;




 
typedef BaseType_t (*TaskHookFunction_t)( void * );

 
typedef enum
{
	eRunning = 0,	 
	eReady,			 
	eBlocked,		 
	eSuspended,		 
	eDeleted,		 
	eInvalid			 
} eTaskState;

 
typedef enum
{
	eNoAction = 0,				 
	eSetBits,					 
	eIncrement,					 
	eSetValueWithOverwrite,		 
	eSetValueWithoutOverwrite	 
} eNotifyAction;



 
typedef struct xTIME_OUT
{
	BaseType_t xOverflowCount;
	TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
	void *pvBaseAddress;
	uint32_t ulLengthInBytes;
	uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
	TaskFunction_t pvTaskCode;
	const char * const pcName;	 
	uint16_t usStackDepth;
	void *pvParameters;
	UBaseType_t uxPriority;
	StackType_t *puxStackBuffer;
	MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
	TaskHandle_t xHandle;			 
	const char *pcTaskName;			   
	UBaseType_t xTaskNumber;		 
	eTaskState eCurrentState;		 
	UBaseType_t uxCurrentPriority;	 
	UBaseType_t uxBasePriority;		 
	uint32_t ulRunTimeCounter;		 
	StackType_t *pxStackBase;		 
	uint16_t usStackHighWaterMark;	 
} TaskStatus_t;

 
typedef enum
{
	eAbortSleep = 0,		 
	eStandardSleep,			 
	eNoTasksWaitingTimeout	 
} eSleepModeStatus;





 









 













 














 









 









 




 







 





























































































 

	BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
							const char * const pcName,	 
							const uint16_t usStackDepth,
							void * const pvParameters,
							UBaseType_t uxPriority,
							TaskHandle_t * const pxCreatedTask ) ;












































































































 

	TaskHandle_t xTaskCreateStatic(	TaskFunction_t pxTaskCode,
									const char * const pcName,  
									const uint32_t ulStackDepth,
									void * const pvParameters,
									UBaseType_t uxPriority,
									StackType_t * const puxStackBuffer,
									StaticTask_t * const pxTaskBuffer ) ;









































































 























































































 

















































 
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;







































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 














































 
void vTaskDelay( const TickType_t xTicksToDelay ) ;

























































 
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;























 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;













































 
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;






 
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
















 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;






















































 
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;








































 
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;

















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;















































 
void vTaskResume( TaskHandle_t xTaskToResume ) ;



























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 



























 
void vTaskStartScheduler( void ) ;






















































 
void vTaskEndScheduler( void ) ;

















































 
void vTaskSuspendAll( void ) ;




















































 
BaseType_t xTaskResumeAll( void ) ;



 









 
TickType_t xTaskGetTickCount( void ) ;














 
TickType_t xTaskGetTickCountFromISR( void ) ;












 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;











 
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;  














 
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;  



















 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;






 
#line 1451 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"

#line 1463 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"











 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;







 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;













































 
void vTaskList( char * pcWriteBuffer ) ;  




















































 
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;  















































































 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;

























































































 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;











































































 
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;












































 






















































 
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;



































































 
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;














 
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );



 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;








 
void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;



 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;




 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t xTaskGetSchedulerState( void ) ;




 
BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;








 
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
void *pvTaskIncrementMutexHeldCount( void ) ;




 
void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;









#line 32 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"

























 








 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"

























 










 
#line 39 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
 







 





 
#line 62 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"













 
typedef void * TimerHandle_t;



 
typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (*PendedFunction_t)( void *, uint32_t );









































































































































 

	TimerHandle_t xTimerCreate(	const char * const pcTimerName,			 
								const TickType_t xTimerPeriodInTicks,
								const UBaseType_t uxAutoReload,
								void * const pvTimerID,
								TimerCallbackFunction_t pxCallbackFunction ) ;



























































































































 

	TimerHandle_t xTimerCreateStatic(	const char * const pcTimerName,			 
										const TickType_t xTimerPeriodInTicks,
										const UBaseType_t uxAutoReload,
										void * const pvTimerID,
										TimerCallbackFunction_t pxCallbackFunction,
										StaticTimer_t *pxTimerBuffer ) ;





















 
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;



















 
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;






 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


















































 









































 















































































 





































 



























































































































 





















































































 






























































 








































































 





















































































 


























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;

 






























 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;









 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  









 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;













 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;




 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


	void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
	UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;









#line 37 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"






























 












 
typedef void * EventGroupHandle_t;








 
typedef TickType_t EventBits_t;




















































 

	EventGroupHandle_t xEventGroupCreate( void ) ;


















































 

	EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer ) ;





























































































 
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;























































 
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;





















































 

	BaseType_t xEventGroupClearBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;











































































 
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;








































































 

	BaseType_t xEventGroupSetBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, BaseType_t *pxHigherPriorityTaskWoken ) ;































































































































 
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;

















 
















 
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;












 
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;

 
void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;



	UBaseType_t uxEventGroupGetNumber( void* xEventGroup ) ;
	void vEventGroupSetNumber( void* xEventGroup, UBaseType_t uxEventGroupNumber ) ;









#line 33 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"

























 








#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"

























 


















 
typedef void * QueueHandle_t;





 
typedef void * QueueSetHandle_t;





 
typedef void * QueueSetMemberHandle_t;

 




 
#line 74 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"




































































 





















































































 

















































































 

















































































 



















































































 


















































































 























































































 
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;




























































































 
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;































 
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;

























































































 
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;













 
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;















 
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;












 
void vQueueDelete( QueueHandle_t xQueue ) ;




































































 






































































 






















































































 









































































 














































































 
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;























































































 
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;




 
BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;









 
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );





 
QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
void* xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;




 
BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;




 























 

	void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcName ) ;  











 

	void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;












 

	const char *pcQueueGetName( QueueHandle_t xQueue ) ;  






 

	QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;






 

	QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;

















































 
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;






















 
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;

















 
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;


































 
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;



 
QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;

 
void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;








#line 36 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"

typedef QueueHandle_t SemaphoreHandle_t;






















































 
#line 103 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"

























































 


























































 




































































 




























































































 
































































 



















































































 




























































































 

































 
























































 




























































 



































































 








































































 















































































 




















































































 















 














 










 











 





#line 34 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

 
#line 51 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

#line 63 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

#line 73 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"



 






 






 
typedef struct {
  osTimerFunc_t func;
  void         *arg;
} TimerCallback_t;

 
static osKernelState_t KernelState;

 
#line 116 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

#line 132 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

 

osStatus_t osKernelInitialize (void) {
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else {
    if (KernelState == osKernelInactive) {



      KernelState = osKernelReady;
      stat = osOK;
    } else {
      stat = osError;
    }
  }

  return (stat);
}

osStatus_t osKernelGetInfo (osVersion_t *version, char *id_buf, uint32_t id_size) {

  if (version != 0) {
    version->api    = (((uint32_t)10 * 10000000UL) | ((uint32_t)0 * 10000UL) | ((uint32_t)1 * 1UL));
    version->kernel = (((uint32_t)10 * 10000000UL) | ((uint32_t)0 * 10000UL) | ((uint32_t)1 * 1UL));
  }

  if ((id_buf != 0) && (id_size != 0U)) {
    if (id_size > sizeof("FreeRTOS V10.0.1")) {
      id_size = sizeof("FreeRTOS V10.0.1");
    }
    memcpy(id_buf, "FreeRTOS V10.0.1", id_size);
  }

  return (osOK);
}

osKernelState_t osKernelGetState (void) {
  osKernelState_t state;

  switch (xTaskGetSchedulerState()) {
    case ( ( BaseType_t ) 2 ):
      state = osKernelRunning;
      break;

    case ( ( BaseType_t ) 0 ):
      state = osKernelLocked;
      break;

    case ( ( BaseType_t ) 1 ):
    default:
      if (KernelState == osKernelReady) {
        state = osKernelReady;
      } else {
        state = osKernelInactive;
      }
      break;
  }

  return (state);
}

osStatus_t osKernelStart (void) {
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else {
    if (KernelState == osKernelReady) {
      KernelState = osKernelRunning;
      vTaskStartScheduler();
      stat = osOK;
    } else {
      stat = osError;
    }
  }

  return (stat);
}

int32_t osKernelLock (void) {
  int32_t lock;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    lock = (int32_t)osErrorISR;
  }
  else {
    switch (xTaskGetSchedulerState()) {
      case ( ( BaseType_t ) 0 ):
        lock = 1;
        break;

      case ( ( BaseType_t ) 2 ):
        vTaskSuspendAll();
        lock = 0;
        break;

      case ( ( BaseType_t ) 1 ):
      default:
        lock = (int32_t)osError;
        break;
    }
  }

  return (lock);
}

int32_t osKernelUnlock (void) {
  int32_t lock;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    lock = (int32_t)osErrorISR;
  }
  else {
    switch (xTaskGetSchedulerState()) {
      case ( ( BaseType_t ) 0 ):
        lock = 1;

        if (xTaskResumeAll() != ( ( BaseType_t ) 1 )) {
          if (xTaskGetSchedulerState() == ( ( BaseType_t ) 0 )) {
            lock = (int32_t)osError;
          }
        }
        break;

      case ( ( BaseType_t ) 2 ):
        lock = 0;
        break;

      case ( ( BaseType_t ) 1 ):
      default:
        lock = (int32_t)osError;
        break;
    }
  }

  return (lock);
}

int32_t osKernelRestoreLock (int32_t lock) {

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    lock = (int32_t)osErrorISR;
  }
  else {
    switch (xTaskGetSchedulerState()) {
      case ( ( BaseType_t ) 0 ):
      case ( ( BaseType_t ) 2 ):
        if (lock == 1) {
          vTaskSuspendAll();
        }
        else {
          if (lock != 0) {
            lock = (int32_t)osError;
          }
          else {
            if (xTaskResumeAll() != ( ( BaseType_t ) 1 )) {
              if (xTaskGetSchedulerState() != ( ( BaseType_t ) 2 )) {
                lock = (int32_t)osError;
              }
            }
          }
        }
        break;

      case ( ( BaseType_t ) 1 ):
      default:
        lock = (int32_t)osError;
        break;
    }
  }

  return (lock);
}

uint32_t osKernelGetTickCount (void) {
  TickType_t ticks;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    ticks = xTaskGetTickCountFromISR();
  } else {
    ticks = xTaskGetTickCount();
  }

  return (ticks);
}

uint32_t osKernelGetTickFreq (void) {
  return (((TickType_t)1000));
}

uint32_t osKernelGetSysTimerCount (void) {
  TickType_t ticks;
  uint32_t val;

  vPortRaiseBASEPRI();

  ticks = xTaskGetTickCount();

  val = ticks * ( ( SystemCoreClock ) / ((TickType_t)1000) );
  vPortSetBASEPRI( 0 );

  return (val);
}

uint32_t osKernelGetSysTimerFreq (void) {
  return (( SystemCoreClock ));
}

 

osThreadId_t osThreadNew (osThreadFunc_t func, void *argument, const osThreadAttr_t *attr) {
  char empty;
  const char *name;
  uint32_t stack;
  TaskHandle_t hTask;
  UBaseType_t prio;
  int32_t mem;

  hTask = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) && (func != 0)) {
    stack = ((uint16_t)128);
    prio  = (UBaseType_t)osPriorityNormal;

    empty = '\0';
    name  = &empty;
    mem   = -1;

    if (attr != 0) {
      if (attr->name != 0) {
        name = attr->name;
      }
      if (attr->priority != osPriorityNone) {
        prio = (UBaseType_t)attr->priority;
      }

      if ((prio < osPriorityIdle) || (prio > osPriorityISR) || ((attr->attr_bits & 0x00000001U) == 0x00000001U)) {
        return (0);
      }

      if (attr->stack_size > 0U) {
         
         
        stack = attr->stack_size / sizeof(StackType_t);
      }

      if ((attr->cb_mem    != 0) && (attr->cb_size    >= sizeof(StaticTask_t)) &&
          (attr->stack_mem != 0) && (attr->stack_size >  0U)) {
        mem = 1;
      }
      else {
        if ((attr->cb_mem == 0) && (attr->cb_size == 0U) && (attr->stack_mem == 0)) {
          mem = 0;
        }
      }
    }
    else {
      mem = 0;
    }

    if (mem == 1) {
      hTask = xTaskCreateStatic ((TaskFunction_t)func, name, stack, argument, prio, (StackType_t  *)attr->stack_mem,
                                                                                    (StaticTask_t *)attr->cb_mem);
    }
    else {
      if (mem == 0) {
        if (xTaskCreate ((TaskFunction_t)func, name, (uint16_t)stack, argument, prio, &hTask) != ( ( ( BaseType_t ) 1 ) )) {
          hTask = 0;
        }
      }
    }
  }

  return ((osThreadId_t)hTask);
}

const char *osThreadGetName (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  const char *name;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTask == 0)) {
    name = 0;
  } else {
    name = pcTaskGetName (hTask);
  }

  return (name);
}

osThreadId_t osThreadGetId (void) {
  osThreadId_t id;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    id = 0;
  } else {
    id = (osThreadId_t)xTaskGetCurrentTaskHandle();
  }

  return (id);
}

osThreadState_t osThreadGetState (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osThreadState_t state;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTask == 0)) {
    state = osThreadError;
  }
  else {
    switch (eTaskGetState (hTask)) {
      case eRunning:   state = osThreadRunning;    break;
      case eReady:     state = osThreadReady;      break;
      case eBlocked:
      case eSuspended: state = osThreadBlocked;    break;
      case eDeleted:   state = osThreadTerminated; break;
      case eInvalid:
      default:         state = osThreadError;      break;
    }
  }

  return (state);
}

uint32_t osThreadGetStackSpace (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  uint32_t sz;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTask == 0)) {
    sz = 0U;
  } else {
    sz = (uint32_t)uxTaskGetStackHighWaterMark (hTask);
  }

  return (sz);
}

uint32_t osThreadGetStackSize	(osThreadId_t thread_id) {
  



 
  (void) thread_id;
  return 0;
}

osStatus_t osThreadSetPriority (osThreadId_t thread_id, osPriority_t priority) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if ((hTask == 0) || (priority < osPriorityIdle) || (priority > osPriorityISR)) {
    stat = osErrorParameter;
  }
  else {
    stat = osOK;
    vTaskPrioritySet (hTask, (UBaseType_t)priority);
  }

  return (stat);
}

osPriority_t osThreadGetPriority (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osPriority_t prio;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTask == 0)) {
    prio = osPriorityError;
  } else {
    prio = (osPriority_t)uxTaskPriorityGet (hTask);
  }

  return (prio);
}

osStatus_t osThreadYield (void) {
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  } else {
    stat = osOK;
    { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }

  return (stat);
}

osStatus_t osThreadSuspend (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTask == 0) {
    stat = osErrorParameter;
  }
  else {
    stat = osOK;
    vTaskSuspend (hTask);
  }

  return (stat);
}

osStatus_t osThreadResume (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTask == 0) {
    stat = osErrorParameter;
  }
  else {
    stat = osOK;
    vTaskResume (hTask);
  }

  return (stat);
}

__declspec(noreturn) void osThreadExit (void) {

  vTaskDelete (0);

  for (;;);
}

osStatus_t osThreadTerminate (osThreadId_t thread_id) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  osStatus_t stat;

  eTaskState tstate;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTask == 0) {
    stat = osErrorParameter;
  }
  else {
    tstate = eTaskGetState (hTask);

    if (tstate != eDeleted) {
      stat = osOK;
      vTaskDelete (hTask);
    } else {
      stat = osErrorResource;
    }
  }




  return (stat);
}

uint32_t osThreadGetCount (void) {
  uint32_t count;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    count = 0U;
  } else {
    count = uxTaskGetNumberOfTasks();
  }

  return (count);
}

uint32_t osThreadEnumerate (osThreadId_t *thread_array, uint32_t array_items) {
  uint32_t i, count;
  TaskStatus_t *task;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (thread_array == 0) || (array_items == 0U)) {
    count = 0U;
  } else {
    vTaskSuspendAll();

    count = uxTaskGetNumberOfTasks();
    task  = pvPortMalloc (count * sizeof(TaskStatus_t));

    if (task != 0) {
      count = uxTaskGetSystemState (task, count, 0);

      for (i = 0U; (i < count) && (i < array_items); i++) {
        thread_array[i] = (osThreadId_t)task[i].xHandle;
      }
      count = i;
    }
    (void)xTaskResumeAll();

    vPortFree (task);
  }

  return (count);
}

uint32_t osThreadFlagsSet (osThreadId_t thread_id, uint32_t flags) {
  TaskHandle_t hTask = (TaskHandle_t)thread_id;
  uint32_t rflags;
  BaseType_t yield;

  if ((hTask == 0) || ((flags & (~((1UL << 31U) - 1U))) != 0U)) {
    rflags = (uint32_t)osErrorParameter;
  }
  else {
    rflags = (uint32_t)osError;

    if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
      yield = ( ( BaseType_t ) 0 );

      (void)xTaskGenericNotifyFromISR( ( hTask ), ( flags ), ( eSetBits ), 0, ( &yield ) );
      (void)xTaskGenericNotifyFromISR( ( hTask ), ( 0 ), ( eNoAction ), ( &rflags ), ( 0 ) );

      if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
    }
    else {
      (void)xTaskGenericNotify( ( hTask ), ( flags ), ( eSetBits ), 0 );
      (void)xTaskGenericNotify( ( hTask ), ( 0 ), ( eNoAction ), ( &rflags ) );
    }
  }
   
  return (rflags);
}

uint32_t osThreadFlagsClear (uint32_t flags) {
  TaskHandle_t hTask;
  uint32_t rflags, cflags;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = (uint32_t)osErrorISR;
  }
  else if ((flags & (~((1UL << 31U) - 1U))) != 0U) {
    rflags = (uint32_t)osErrorParameter;
  }
  else {
    hTask = xTaskGetCurrentTaskHandle();

    if (xTaskGenericNotify( ( hTask ), ( 0 ), ( eNoAction ), ( &cflags ) ) == ( ( ( BaseType_t ) 1 ) )) {
      rflags = cflags;
      cflags &= ~flags;

      if (xTaskGenericNotify( ( hTask ), ( cflags ), ( eSetValueWithOverwrite ), 0 ) != ( ( ( BaseType_t ) 1 ) )) {
        rflags = (uint32_t)osError;
      }
    }
    else {
      rflags = (uint32_t)osError;
    }
  }

   
  return (rflags);
}

uint32_t osThreadFlagsGet (void) {
  TaskHandle_t hTask;
  uint32_t rflags;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = (uint32_t)osErrorISR;
  }
  else {
    hTask = xTaskGetCurrentTaskHandle();

    if (xTaskGenericNotify( ( hTask ), ( 0 ), ( eNoAction ), ( &rflags ) ) != ( ( ( BaseType_t ) 1 ) )) {
      rflags = (uint32_t)osError;
    }
  }

  return (rflags);
}

uint32_t osThreadFlagsWait (uint32_t flags, uint32_t options, uint32_t timeout) {
  uint32_t rflags, nval;
  uint32_t clear;
  TickType_t t0, td, tout;
  BaseType_t rval;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = (uint32_t)osErrorISR;
  }
  else if ((flags & (~((1UL << 31U) - 1U))) != 0U) {
    rflags = (uint32_t)osErrorParameter;
  }
  else {
    if ((options & 0x00000002U) == 0x00000002U) {
      clear = 0U;
    } else {
      clear = flags;
    }

    rflags = 0U;
    tout   = timeout;

    t0 = xTaskGetTickCount();
    do {
      rval = xTaskNotifyWait (0, clear, &nval, tout);

      if (rval == ( ( ( BaseType_t ) 1 ) )) {
        rflags &= flags;
        rflags |= nval;

        if ((options & 0x00000001U) == 0x00000001U) {
          if ((flags & rflags) == flags) {
            break;
          } else {
            if (timeout == 0U) {
              rflags = (uint32_t)osErrorResource;
              break;
            }
          }
        }
        else {
          if ((flags & rflags) != 0) {
            break;
          } else {
            if (timeout == 0U) {
              rflags = (uint32_t)osErrorResource;
              break;
            }
          }
        }

         
        td = xTaskGetTickCount() - t0;

        if (td > tout) {
          tout  = 0;
        } else {
          tout -= td;
        }
      }
      else {
        if (timeout == 0) {
          rflags = (uint32_t)osErrorResource;
        } else {
          rflags = (uint32_t)osErrorTimeout;
        }
      }
    }
    while (rval != ( ( ( BaseType_t ) 0 ) ));
  }

   
  return (rflags);
}

osStatus_t osDelay (uint32_t ticks) {
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else {
    stat = osOK;

    if (ticks != 0U) {
      vTaskDelay(ticks);
    }
  }

  return (stat);
}

osStatus_t osDelayUntil (uint32_t ticks) {
  TickType_t tcnt;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else {
    stat = osOK;
    tcnt = xTaskGetTickCount();

    vTaskDelayUntil (&tcnt, (TickType_t)(ticks - tcnt));
  }

  return (stat);
}

 

static void TimerCallback (TimerHandle_t hTimer) {
  TimerCallback_t *callb;

  callb = (TimerCallback_t *)pvTimerGetTimerID (hTimer);

  if (callb != 0) {
    callb->func (callb->arg);
  }
}

osTimerId_t osTimerNew (osTimerFunc_t func, osTimerType_t type, void *argument, const osTimerAttr_t *attr) {
  const char *name;
  TimerHandle_t hTimer;
  TimerCallback_t *callb;
  UBaseType_t reload;
  int32_t mem;

  hTimer = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) && (func != 0)) {
     
    callb = pvPortMalloc (sizeof(TimerCallback_t));

    if (callb != 0) {
      callb->func = func;
      callb->arg  = argument;

      if (type == osTimerOnce) {
        reload = ( ( BaseType_t ) 0 );
      } else {
        reload = ( ( BaseType_t ) 1 );
      }

      mem  = -1;
      name = 0;

      if (attr != 0) {
        if (attr->name != 0) {
          name = attr->name;
        }

        if ((attr->cb_mem != 0) && (attr->cb_size >= sizeof(StaticTimer_t))) {
          mem = 1;
        }
        else {
          if ((attr->cb_mem == 0) && (attr->cb_size == 0U)) {
            mem = 0;
          }
        }
      }
      else {
        mem = 0;
      }

      if (mem == 1) {
        hTimer = xTimerCreateStatic (name, 1, reload, callb, TimerCallback, (StaticTimer_t *)attr->cb_mem);
      }
      else {
        if (mem == 0) {
          hTimer = xTimerCreate (name, 1, reload, callb, TimerCallback);
        }
      }
    }
  }

  return ((osTimerId_t)hTimer);
}

const char *osTimerGetName (osTimerId_t timer_id) {
  TimerHandle_t hTimer = (TimerHandle_t)timer_id;
  const char *p;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTimer == 0)) {
    p = 0;
  } else {
    p = pcTimerGetName (hTimer);
  }

  return (p);
}

osStatus_t osTimerStart (osTimerId_t timer_id, uint32_t ticks) {
  TimerHandle_t hTimer = (TimerHandle_t)timer_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTimer == 0) {
    stat = osErrorParameter;
  }
  else {
    if (xTimerGenericCommand( ( hTimer ), ( ( BaseType_t ) 4 ), ( ticks ), 0, ( 0 ) ) == ( ( ( BaseType_t ) 1 ) )) {
      stat = osOK;
    } else {
      stat = osErrorResource;
    }
  }

  return (stat);
}

osStatus_t osTimerStop (osTimerId_t timer_id) {
  TimerHandle_t hTimer = (TimerHandle_t)timer_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTimer == 0) {
    stat = osErrorParameter;
  }
  else {
    if (xTimerIsTimerActive (hTimer) == ( ( BaseType_t ) 0 )) {
      stat = osErrorResource;
    }
    else {
      if (xTimerGenericCommand( ( hTimer ), ( ( BaseType_t ) 3 ), 0U, 0, ( 0 ) ) == ( ( ( BaseType_t ) 1 ) )) {
        stat = osOK;
      } else {
        stat = osError;
      }
    }
  }

  return (stat);
}

uint32_t osTimerIsRunning (osTimerId_t timer_id) {
  TimerHandle_t hTimer = (TimerHandle_t)timer_id;
  uint32_t running;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hTimer == 0)) {
    running = 0U;
  } else {
    running = (uint32_t)xTimerIsTimerActive (hTimer);
  }

  return (running);
}

osStatus_t osTimerDelete (osTimerId_t timer_id) {
  TimerHandle_t hTimer = (TimerHandle_t)timer_id;
  osStatus_t stat;

  TimerCallback_t *callb;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hTimer == 0) {
    stat = osErrorParameter;
  }
  else {
    callb = (TimerCallback_t *)pvTimerGetTimerID (hTimer);

    if (xTimerGenericCommand( ( hTimer ), ( ( BaseType_t ) 5 ), 0U, 0, ( 0 ) ) == ( ( ( BaseType_t ) 1 ) )) {
      vPortFree (callb);
      stat = osOK;
    } else {
      stat = osErrorResource;
    }
  }




  return (stat);
}

 

osEventFlagsId_t osEventFlagsNew (const osEventFlagsAttr_t *attr) {
  EventGroupHandle_t hEventGroup;
  int32_t mem;

  hEventGroup = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    mem = -1;

    if (attr != 0) {
      if ((attr->cb_mem != 0) && (attr->cb_size >= sizeof(StaticEventGroup_t))) {
        mem = 1;
      }
      else {
        if ((attr->cb_mem == 0) && (attr->cb_size == 0U)) {
          mem = 0;
        }
      }
    }
    else {
      mem = 0;
    }

    if (mem == 1) {
      hEventGroup = xEventGroupCreateStatic (attr->cb_mem);
    }
    else {
      if (mem == 0) {
        hEventGroup = xEventGroupCreate();
      }
    }
  }

  return ((osEventFlagsId_t)hEventGroup);
}

uint32_t osEventFlagsSet (osEventFlagsId_t ef_id, uint32_t flags) {
  EventGroupHandle_t hEventGroup = (EventGroupHandle_t)ef_id;
  uint32_t rflags;
  BaseType_t yield;

  if ((hEventGroup == 0) || ((flags & (~((1UL << 24U) - 1U))) != 0U)) {
    rflags = (uint32_t)osErrorParameter;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    yield = ( ( BaseType_t ) 0 );

    if (xEventGroupSetBitsFromISR (hEventGroup, (EventBits_t)flags, &yield) != ( ( ( BaseType_t ) 0 ) )) {
      rflags = (uint32_t)osErrorResource;
    } else {
      rflags = flags;
      if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
    }
  }
  else {
    rflags = xEventGroupSetBits (hEventGroup, (EventBits_t)flags);
  }

  return (rflags);
}

uint32_t osEventFlagsClear (osEventFlagsId_t ef_id, uint32_t flags) {
  EventGroupHandle_t hEventGroup = (EventGroupHandle_t)ef_id;
  uint32_t rflags;

  if ((hEventGroup == 0) || ((flags & (~((1UL << 24U) - 1U))) != 0U)) {
    rflags = (uint32_t)osErrorParameter;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = xEventGroupGetBitsFromISR (hEventGroup);

    if (xEventGroupClearBitsFromISR (hEventGroup, (EventBits_t)flags) == ( ( ( BaseType_t ) 0 ) )) {
      rflags = (uint32_t)osErrorResource;
    }
  }
  else {
    rflags = xEventGroupClearBits (hEventGroup, (EventBits_t)flags);
  }

  return (rflags);
}

uint32_t osEventFlagsGet (osEventFlagsId_t ef_id) {
  EventGroupHandle_t hEventGroup = (EventGroupHandle_t)ef_id;
  uint32_t rflags;

  if (ef_id == 0) {
    rflags = 0U;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = xEventGroupGetBitsFromISR (hEventGroup);
  }
  else {
    rflags = xEventGroupClearBits( hEventGroup, 0 );
  }

  return (rflags);
}

uint32_t osEventFlagsWait (osEventFlagsId_t ef_id, uint32_t flags, uint32_t options, uint32_t timeout) {
  EventGroupHandle_t hEventGroup = (EventGroupHandle_t)ef_id;
  BaseType_t wait_all;
  BaseType_t exit_clr;
  uint32_t rflags;

  if ((hEventGroup == 0) || ((flags & (~((1UL << 24U) - 1U))) != 0U)) {
    rflags = (uint32_t)osErrorParameter;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    rflags = (uint32_t)osErrorISR;
  }
  else {
    if (options & 0x00000001U) {
      wait_all = ( ( BaseType_t ) 1 );
    } else {
      wait_all = ( ( ( BaseType_t ) 0 ) );
    }

    if (options & 0x00000002U) {
      exit_clr = ( ( ( BaseType_t ) 0 ) );
    } else {
      exit_clr = ( ( BaseType_t ) 1 );
    }

    rflags = xEventGroupWaitBits (hEventGroup, (EventBits_t)flags, exit_clr, wait_all, (TickType_t)timeout);

    if (options & 0x00000001U) {
      if (flags != rflags) {
        if (timeout > 0U) {
          rflags = (uint32_t)osErrorTimeout;
        } else {
          rflags = (uint32_t)osErrorResource;
        }
      }
    }
    else {
      if ((flags & rflags) == 0U) {
        if (timeout > 0U) {
          rflags = (uint32_t)osErrorTimeout;
        } else {
          rflags = (uint32_t)osErrorResource;
        }
      }
    }
  }

  return (rflags);
}

osStatus_t osEventFlagsDelete (osEventFlagsId_t ef_id) {
  EventGroupHandle_t hEventGroup = (EventGroupHandle_t)ef_id;
  osStatus_t stat;


  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hEventGroup == 0) {
    stat = osErrorParameter;
  }
  else {
    stat = osOK;
    vEventGroupDelete (hEventGroup);
  }




  return (stat);
}

 

osMutexId_t osMutexNew (const osMutexAttr_t *attr) {
  SemaphoreHandle_t hMutex;
  uint32_t type;
  uint32_t rmtx;
  int32_t  mem;

  const char *name;


  hMutex = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    if (attr != 0) {
      type = attr->attr_bits;
    } else {
      type = 0U;
    }

    if ((type & 0x00000001U) == 0x00000001U) {
      rmtx = 1U;
    } else {
      rmtx = 0U;
    }

    if ((type & 0x00000008U) != 0x00000008U) {
      mem = -1;

      if (attr != 0) {
        if ((attr->cb_mem != 0) && (attr->cb_size >= sizeof(StaticSemaphore_t))) {
          mem = 1;
        }
        else {
          if ((attr->cb_mem == 0) && (attr->cb_size == 0U)) {
            mem = 0;
          }
        }
      }
      else {
        mem = 0;
      }

      if (mem == 1) {
        if (rmtx != 0U) {
          hMutex = xQueueCreateMutexStatic( ( ( uint8_t ) 4U ), attr->cb_mem );
        }
        else {
          hMutex = xQueueCreateMutexStatic( ( ( uint8_t ) 1U ), ( attr->cb_mem ) );
        }
      }
      else {
        if (mem == 0) {
          if (rmtx != 0U) {
            hMutex = xQueueCreateMutex( ( ( uint8_t ) 4U ) );
          } else {
            hMutex = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
          }
        }
      }


      if (hMutex != 0) {
        if (attr != 0) {
          name = attr->name;
        } else {
          name = 0;
        }
        vQueueAddToRegistry (hMutex, name);
      }


      if ((hMutex != 0) && (rmtx != 0U)) {
        hMutex = (SemaphoreHandle_t)((uint32_t)hMutex | 1U);
      }
    }
  }

  return ((osMutexId_t)hMutex);
}

osStatus_t osMutexAcquire (osMutexId_t mutex_id, uint32_t timeout) {
  SemaphoreHandle_t hMutex;
  osStatus_t stat;
  uint32_t rmtx;

  hMutex = (SemaphoreHandle_t)((uint32_t)mutex_id & ~1U);

  rmtx = (uint32_t)mutex_id & 1U;

  stat = osOK;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hMutex == 0) {
    stat = osErrorParameter;
  }
  else {
    if (rmtx != 0U) {
      if (xQueueTakeMutexRecursive( ( hMutex ), ( timeout ) ) != ( ( ( BaseType_t ) 1 ) )) {
        if (timeout != 0U) {
          stat = osErrorTimeout;
        } else {
          stat = osErrorResource;
        }
      }
    }
    else {
      if (xQueueSemaphoreTake( ( hMutex ), ( timeout ) ) != ( ( ( BaseType_t ) 1 ) )) {
        if (timeout != 0U) {
          stat = osErrorTimeout;
        } else {
          stat = osErrorResource;
        }
      }
    }
  }

  return (stat);
}

osStatus_t osMutexRelease (osMutexId_t mutex_id) {
  SemaphoreHandle_t hMutex;
  osStatus_t stat;
  uint32_t rmtx;

  hMutex = (SemaphoreHandle_t)((uint32_t)mutex_id & ~1U);

  rmtx = (uint32_t)mutex_id & 1U;

  stat = osOK;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hMutex == 0) {
    stat = osErrorParameter;
  }
  else {
    if (rmtx != 0U) {
      if (xQueueGiveMutexRecursive( ( hMutex ) ) != ( ( ( BaseType_t ) 1 ) )) {
        stat = osErrorResource;
      }
    }
    else {
      if (xQueueGenericSend( ( QueueHandle_t ) ( hMutex ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( ( BaseType_t ) 1 ) )) {
        stat = osErrorResource;
      }
    }
  }

  return (stat);
}

osThreadId_t osMutexGetOwner (osMutexId_t mutex_id) {
  SemaphoreHandle_t hMutex;
  osThreadId_t owner;

  hMutex = (SemaphoreHandle_t)((uint32_t)mutex_id & ~1U);

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) || (hMutex == 0)) {
    owner = 0;
  } else {
    owner = (osThreadId_t)xQueueGetMutexHolder( ( hMutex ) );
  }

  return (owner);
}

osStatus_t osMutexDelete (osMutexId_t mutex_id) {
  osStatus_t stat;

  SemaphoreHandle_t hMutex;

  hMutex = (SemaphoreHandle_t)((uint32_t)mutex_id & ~1U);

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hMutex == 0) {
    stat = osErrorParameter;
  }
  else {

    vQueueUnregisterQueue (hMutex);

    stat = osOK;
    vQueueDelete( ( QueueHandle_t ) ( hMutex ) );
  }




  return (stat);
}

 

osSemaphoreId_t osSemaphoreNew (uint32_t max_count, uint32_t initial_count, const osSemaphoreAttr_t *attr) {
  SemaphoreHandle_t hSemaphore;
  int32_t mem;

  const char *name;


  hSemaphore = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) && (max_count > 0U) && (initial_count <= max_count)) {
    mem = -1;

    if (attr != 0) {
      if ((attr->cb_mem != 0) && (attr->cb_size >= sizeof(StaticSemaphore_t))) {
        mem = 1;
      }
      else {
        if ((attr->cb_mem == 0) && (attr->cb_size == 0U)) {
          mem = 0;
        }
      }
    }
    else {
      mem = 0;
    }

    if (mem != -1) {
      if (max_count == 1U) {
        if (mem == 1) {
          hSemaphore = xQueueGenericCreateStatic( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), 0, (StaticSemaphore_t *)attr->cb_mem, ( ( uint8_t ) 3U ) );
        }
        else {
          hSemaphore = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
        }

        if ((hSemaphore != 0) && (initial_count != 0U)) {
          if (xQueueGenericSend( ( QueueHandle_t ) ( hSemaphore ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( ( BaseType_t ) 1 ) )) {
            vQueueDelete( ( QueueHandle_t ) ( hSemaphore ) );
            hSemaphore = 0;
          }
        }
      }
      else {
        if (mem == 1) {
          hSemaphore = xQueueCreateCountingSemaphoreStatic( ( max_count ), ( initial_count ), ( (StaticSemaphore_t *)attr->cb_mem ) );
        }
        else {
          hSemaphore = xQueueCreateCountingSemaphore( ( max_count ), ( initial_count ) );
        }
      }


      if (hSemaphore != 0) {
        if (attr != 0) {
          name = attr->name;
        } else {
          name = 0;
        }
        vQueueAddToRegistry (hSemaphore, name);
      }

    }
  }

  return ((osSemaphoreId_t)hSemaphore);
}

osStatus_t osSemaphoreAcquire (osSemaphoreId_t semaphore_id, uint32_t timeout) {
  SemaphoreHandle_t hSemaphore = (SemaphoreHandle_t)semaphore_id;
  osStatus_t stat;
  BaseType_t yield;

  stat = osOK;

  if (hSemaphore == 0) {
    stat = osErrorParameter;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    if (timeout != 0U) {
      stat = osErrorParameter;
    }
    else {
      yield = ( ( BaseType_t ) 0 );

      if (xQueueReceiveFromISR( ( QueueHandle_t ) ( hSemaphore ), 0, ( &yield ) ) != ( ( ( BaseType_t ) 1 ) )) {
        stat = osErrorResource;
      } else {
        if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
      }
    }
  }
  else {
    if (xQueueSemaphoreTake( ( hSemaphore ), ( (TickType_t)timeout ) ) != ( ( ( BaseType_t ) 1 ) )) {
      if (timeout != 0U) {
        stat = osErrorTimeout;
      } else {
        stat = osErrorResource;
      }
    }
  }

  return (stat);
}

osStatus_t osSemaphoreRelease (osSemaphoreId_t semaphore_id) {
  SemaphoreHandle_t hSemaphore = (SemaphoreHandle_t)semaphore_id;
  osStatus_t stat;
  BaseType_t yield;

  stat = osOK;

  if (hSemaphore == 0) {
    stat = osErrorParameter;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    yield = ( ( BaseType_t ) 0 );

    if (xQueueGiveFromISR( ( QueueHandle_t ) ( hSemaphore ), ( &yield ) ) != ( ( BaseType_t ) 1 )) {
      stat = osErrorResource;
    } else {
      if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
    }
  }
  else {
    if (xQueueGenericSend( ( QueueHandle_t ) ( hSemaphore ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( ( BaseType_t ) 1 ) )) {
      stat = osErrorResource;
    }
  }

  return (stat);
}

uint32_t osSemaphoreGetCount (osSemaphoreId_t semaphore_id) {
  SemaphoreHandle_t hSemaphore = (SemaphoreHandle_t)semaphore_id;
  uint32_t count;

  if (hSemaphore == 0) {
    count = 0U;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    count = uxQueueMessagesWaitingFromISR (hSemaphore);
  } else {
    count = (uint32_t)uxQueueMessagesWaiting( ( QueueHandle_t ) ( hSemaphore ) );
  }

  return (count);
}

osStatus_t osSemaphoreDelete (osSemaphoreId_t semaphore_id) {
  SemaphoreHandle_t hSemaphore = (SemaphoreHandle_t)semaphore_id;
  osStatus_t stat;


  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hSemaphore == 0) {
    stat = osErrorParameter;
  }
  else {

    vQueueUnregisterQueue (hSemaphore);


    stat = osOK;
    vQueueDelete( ( QueueHandle_t ) ( hSemaphore ) );
  }




  return (stat);
}

 

osMessageQueueId_t osMessageQueueNew (uint32_t msg_count, uint32_t msg_size, const osMessageQueueAttr_t *attr) {
  QueueHandle_t hQueue;
  int32_t mem;

  const char *name;


  hQueue = 0;

  if (!((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U)))) && (msg_count > 0U) && (msg_size > 0U)) {
    mem = -1;

    if (attr != 0) {
      if ((attr->cb_mem != 0) && (attr->cb_size >= sizeof(StaticQueue_t)) &&
          (attr->mq_mem != 0) && (attr->mq_size >= (msg_count * msg_size))) {
        mem = 1;
      }
      else {
        if ((attr->cb_mem == 0) && (attr->cb_size == 0U) &&
            (attr->mq_mem == 0) && (attr->mq_size == 0U)) {
          mem = 0;
        }
      }
    }
    else {
      mem = 0;
    }

    if (mem == 1) {
      hQueue = xQueueGenericCreateStatic( ( msg_count ), ( msg_size ), ( attr->mq_mem ), ( attr->cb_mem ), ( ( ( uint8_t ) 0U ) ) );
    }
    else {
      if (mem == 0) {
        hQueue = xQueueGenericCreate( ( msg_count ), ( msg_size ), ( ( ( uint8_t ) 0U ) ) );
      }
    }


    if (hQueue != 0) {
      if (attr != 0) {
        name = attr->name;
      } else {
        name = 0;
      }
      vQueueAddToRegistry (hQueue, name);
    }


  }

  return ((osMessageQueueId_t)hQueue);
}

osStatus_t osMessageQueuePut (osMessageQueueId_t mq_id, const void *msg_ptr, uint8_t msg_prio, uint32_t timeout) {
  QueueHandle_t hQueue = (QueueHandle_t)mq_id;
  osStatus_t stat;
  BaseType_t yield;

  (void)msg_prio;  

  stat = osOK;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    if ((hQueue == 0) || (msg_ptr == 0) || (timeout != 0U)) {
      stat = osErrorParameter;
    }
    else {
      yield = ( ( BaseType_t ) 0 );

      if (xQueueGenericSendFromISR( ( hQueue ), ( msg_ptr ), ( &yield ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
        stat = osErrorResource;
      } else {
        if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
      }
    }
  }
  else {
    if ((hQueue == 0) || (msg_ptr == 0)) {
      stat = osErrorParameter;
    }
    else {
      if (xQueueGenericSend( ( hQueue ), ( msg_ptr ), ( (TickType_t)timeout ), ( ( BaseType_t ) 0 ) ) != ( ( ( BaseType_t ) 1 ) )) {
        if (timeout != 0U) {
          stat = osErrorTimeout;
        } else {
          stat = osErrorResource;
        }
      }
    }
  }

  return (stat);
}

osStatus_t osMessageQueueGet (osMessageQueueId_t mq_id, void *msg_ptr, uint8_t *msg_prio, uint32_t timeout) {
  QueueHandle_t hQueue = (QueueHandle_t)mq_id;
  osStatus_t stat;
  BaseType_t yield;

  (void)msg_prio;  

  stat = osOK;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    if ((hQueue == 0) || (msg_ptr == 0) || (timeout != 0U)) {
      stat = osErrorParameter;
    }
    else {
      yield = ( ( BaseType_t ) 0 );

      if (xQueueReceiveFromISR (hQueue, msg_ptr, &yield) != ( ( ( BaseType_t ) 1 ) )) {
        stat = osErrorResource;
      } else {
        if( yield != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
      }
    }
  }
  else {
    if ((hQueue == 0) || (msg_ptr == 0)) {
      stat = osErrorParameter;
    }
    else {
      if (xQueueReceive (hQueue, msg_ptr, (TickType_t)timeout) != ( ( ( BaseType_t ) 1 ) )) {
        if (timeout != 0U) {
          stat = osErrorTimeout;
        } else {
          stat = osErrorResource;
        }
      }
    }
  }

  return (stat);
}

uint32_t osMessageQueueGetCapacity (osMessageQueueId_t mq_id) {
  StaticQueue_t *mq = (StaticQueue_t *)mq_id;
  uint32_t capacity;

  if (mq == 0) {
    capacity = 0U;
  } else {
     
    capacity = mq->uxDummy4[1];
  }

  return (capacity);
}

uint32_t osMessageQueueGetMsgSize (osMessageQueueId_t mq_id) {
  StaticQueue_t *mq = (StaticQueue_t *)mq_id;
  uint32_t size;

  if (mq == 0) {
    size = 0U;
  } else {
     
    size = mq->uxDummy4[2];
  }

  return (size);
}

uint32_t osMessageQueueGetCount (osMessageQueueId_t mq_id) {
  QueueHandle_t hQueue = (QueueHandle_t)mq_id;
  UBaseType_t count;

  if (hQueue == 0) {
    count = 0U;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    count = uxQueueMessagesWaitingFromISR (hQueue);
  }
  else {
    count = uxQueueMessagesWaiting (hQueue);
  }

  return ((uint32_t)count);
}

uint32_t osMessageQueueGetSpace (osMessageQueueId_t mq_id) {
  StaticQueue_t *mq = (StaticQueue_t *)mq_id;
  uint32_t space;
  uint32_t isrm;

  if (mq == 0) {
    space = 0U;
  }
  else if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    isrm = ulPortRaiseBASEPRI();

     
    space = mq->uxDummy4[1] - mq->uxDummy4[0];

    vPortSetBASEPRI(isrm);
  }
  else {
    space = (uint32_t)uxQueueSpacesAvailable ((QueueHandle_t)mq);
  }

  return (space);
}

osStatus_t osMessageQueueReset (osMessageQueueId_t mq_id) {
  QueueHandle_t hQueue = (QueueHandle_t)mq_id;
  osStatus_t stat;

  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hQueue == 0) {
    stat = osErrorParameter;
  }
  else {
    stat = osOK;
    (void)xQueueGenericReset( hQueue, ( ( BaseType_t ) 0 ) );
  }

  return (stat);
}

osStatus_t osMessageQueueDelete (osMessageQueueId_t mq_id) {
  QueueHandle_t hQueue = (QueueHandle_t)mq_id;
  osStatus_t stat;


  if (((__get_IPSR() != 0U) || ((__get_PRIMASK() != 0U) || ((KernelState == osKernelRunning) && (__get_BASEPRI() != 0U))))) {
    stat = osErrorISR;
  }
  else if (hQueue == 0) {
    stat = osErrorParameter;
  }
  else {

    vQueueUnregisterQueue (hQueue);


    stat = osOK;
    vQueueDelete (hQueue);
  }




  return (stat);
}

 

 
extern void vApplicationIdleHook (void);
extern void vApplicationTickHook (void);
extern void vApplicationMallocFailedHook (void);
extern void vApplicationDaemonTaskStartupHook (void);
extern void vApplicationStackOverflowHook (TaskHandle_t xTask, signed char *pcTaskName);



 






 






 






 






 
#line 1838 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c"

 

 
extern void vApplicationGetIdleTaskMemory  (StaticTask_t **ppxIdleTaskTCBBuffer,  StackType_t **ppxIdleTaskStackBuffer,  uint32_t *pulIdleTaskStackSize);
extern void vApplicationGetTimerTaskMemory (StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize);

 
static StaticTask_t Idle_TCB;
static StackType_t  Idle_Stack[((uint16_t)128)];

 
static StaticTask_t Timer_TCB;
static StackType_t  Timer_Stack[256];




 
void vApplicationGetIdleTaskMemory (StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize) {
  *ppxIdleTaskTCBBuffer   = &Idle_TCB;
  *ppxIdleTaskStackBuffer = &Idle_Stack[0];
  *pulIdleTaskStackSize   = (uint32_t)((uint16_t)128);
}




 
void vApplicationGetTimerTaskMemory (StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize) {
  *ppxTimerTaskTCBBuffer   = &Timer_TCB;
  *ppxTimerTaskStackBuffer = &Timer_Stack[0];
  *pulTimerTaskStackSize   = (uint32_t)256;
}
