#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"

























 

 
#line 1 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stdlib.h"





 
#line 30 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"



 


#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

























 






 
#line 1 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARM_Compiler_5.06u7\\Bin\\..\\include\\stddef.h"



 

#line 35 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"













 
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







#line 37 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"
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









#line 38 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"
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








#line 39 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"
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









#line 40 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"








 






 


 



 




 
typedef struct tmrTimerControl
{
	const char				*pcTimerName;		   
	ListItem_t				xTimerListItem;		 
	TickType_t				xTimerPeriodInTicks; 
	UBaseType_t				uxAutoReload;		 
	void 					*pvTimerID;			 
	TimerCallbackFunction_t	pxCallbackFunction;	 

		UBaseType_t			uxTimerNumber;		 



		uint8_t 			ucStaticallyAllocated;  

} xTIMER;


 
typedef xTIMER Timer_t;





 
typedef struct tmrTimerParameters
{
	TickType_t			xMessageValue;		 
	Timer_t *			pxTimer;			 
} TimerParameter_t;


typedef struct tmrCallbackParameters
{
	PendedFunction_t	pxCallbackFunction;	 
	void *pvParameter1;						 
	uint32_t ulParameter2;					 
} CallbackParameters_t;


 
typedef struct tmrTimerQueueMessage
{
	BaseType_t			xMessageID;			 
	union
	{
		TimerParameter_t xTimerParameters;

		
 

			CallbackParameters_t xCallbackParameters;

	} u;
} DaemonTaskMessage_t;


 



 
 static List_t xActiveTimerList1 = {0};
 static List_t xActiveTimerList2 = {0};
 static List_t *pxCurrentTimerList = 0;
 static List_t *pxOverflowTimerList = 0;

 
 static QueueHandle_t xTimerQueue = 0;
 static TaskHandle_t xTimerTaskHandle = 0;

 

 



	


 
	extern void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize );






 
static void prvCheckForValidListAndQueue( void ) ;





 
static void prvTimerTask( void *pvParameters ) ;




 
static void prvProcessReceivedCommands( void ) ;




 
static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer, const TickType_t xNextExpiryTime, const TickType_t xTimeNow, const TickType_t xCommandTime ) ;




 
static void prvProcessExpiredTimer( const TickType_t xNextExpireTime, const TickType_t xTimeNow ) ;




 
static void prvSwitchTimerLists( void ) ;




 
static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched ) ;






 
static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty ) ;




 
static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime, BaseType_t xListWasEmpty ) ;




 
static void prvInitialiseNewTimer(	const char * const pcTimerName,			 
									const TickType_t xTimerPeriodInTicks,
									const UBaseType_t uxAutoReload,
									void * const pvTimerID,
									TimerCallbackFunction_t pxCallbackFunction,
									Timer_t *pxNewTimer ) ;
 

BaseType_t xTimerCreateTimerTask( void )
{
BaseType_t xReturn = ( ( ( BaseType_t ) 0 ) );

	


 
	prvCheckForValidListAndQueue();

	if( xTimerQueue != 0 )
	{

		{
			StaticTask_t *pxTimerTaskTCBBuffer = 0;
			StackType_t *pxTimerTaskStackBuffer = 0;
			uint32_t ulTimerTaskStackSize;

			vApplicationGetTimerTaskMemory( &pxTimerTaskTCBBuffer, &pxTimerTaskStackBuffer, &ulTimerTaskStackSize );
			xTimerTaskHandle = xTaskCreateStatic(	prvTimerTask,
													"Tmr Svc",
													ulTimerTaskStackSize,
													0,
													( ( UBaseType_t ) ( 2 ) ) | ( ( UBaseType_t ) 0x00 ),
													pxTimerTaskStackBuffer,
													pxTimerTaskTCBBuffer );

			if( xTimerTaskHandle != 0 )
			{
				xReturn = ( ( ( BaseType_t ) 1 ) );
			}
		}
#line 265 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"
	}
	else
	{
		;
	}

	if ((xReturn) == 0) {vPortRaiseBASEPRI(); for( ;; );};
	return xReturn;
}
 



	TimerHandle_t xTimerCreate(	const char * const pcTimerName,			 
								const TickType_t xTimerPeriodInTicks,
								const UBaseType_t uxAutoReload,
								void * const pvTimerID,
								TimerCallbackFunction_t pxCallbackFunction )
	{
	Timer_t *pxNewTimer;

		pxNewTimer = ( Timer_t * ) pvPortMalloc( sizeof( Timer_t ) );

		if( pxNewTimer != 0 )
		{
			prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );


			{
				

 
				pxNewTimer->ucStaticallyAllocated = ( ( BaseType_t ) 0 );
			}

		}

		return pxNewTimer;
	}


 



	TimerHandle_t xTimerCreateStatic(	const char * const pcTimerName,		 
										const TickType_t xTimerPeriodInTicks,
										const UBaseType_t uxAutoReload,
										void * const pvTimerID,
										TimerCallbackFunction_t pxCallbackFunction,
										StaticTimer_t *pxTimerBuffer )
	{
	Timer_t *pxNewTimer;


		{
			

 
			volatile size_t xSize = sizeof( StaticTimer_t );
			if ((xSize == sizeof( Timer_t )) == 0) {vPortRaiseBASEPRI(); for( ;; );};
		}


		 
		if ((pxTimerBuffer) == 0) {vPortRaiseBASEPRI(); for( ;; );};
		pxNewTimer = ( Timer_t * ) pxTimerBuffer;  

		if( pxNewTimer != 0 )
		{
			prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );


			{
				
 
				pxNewTimer->ucStaticallyAllocated = ( ( BaseType_t ) 1 );
			}

		}

		return pxNewTimer;
	}


 

static void prvInitialiseNewTimer(	const char * const pcTimerName,			 
									const TickType_t xTimerPeriodInTicks,
									const UBaseType_t uxAutoReload,
									void * const pvTimerID,
									TimerCallbackFunction_t pxCallbackFunction,
									Timer_t *pxNewTimer )
{
	 
	if ((( xTimerPeriodInTicks > 0 )) == 0) {vPortRaiseBASEPRI(); for( ;; );};

	if( pxNewTimer != 0 )
	{
		
 
		prvCheckForValidListAndQueue();

		
 
		pxNewTimer->pcTimerName = pcTimerName;
		pxNewTimer->xTimerPeriodInTicks = xTimerPeriodInTicks;
		pxNewTimer->uxAutoReload = uxAutoReload;
		pxNewTimer->pvTimerID = pvTimerID;
		pxNewTimer->pxCallbackFunction = pxCallbackFunction;
		vListInitialiseItem( &( pxNewTimer->xTimerListItem ) );
		;
	}
}
 

BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait )
{
BaseType_t xReturn = ( ( ( BaseType_t ) 0 ) );
DaemonTaskMessage_t xMessage;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};

	
 
	if( xTimerQueue != 0 )
	{
		 
		xMessage.xMessageID = xCommandID;
		xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
		xMessage.u.xTimerParameters.pxTimer = ( Timer_t * ) xTimer;

		if( xCommandID < ( ( BaseType_t ) 6 ) )
		{
			if( xTaskGetSchedulerState() == ( ( BaseType_t ) 2 ) )
			{
				xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( xTicksToWait ), ( ( BaseType_t ) 0 ) );
			}
			else
			{
				xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
			}
		}
		else
		{
			xReturn = xQueueGenericSendFromISR( ( xTimerQueue ), ( &xMessage ), ( pxHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );
		}

		;
	}
	else
	{
		;
	}

	return xReturn;
}
 

TaskHandle_t xTimerGetTimerDaemonTaskHandle( void )
{
	
 
	if ((( xTimerTaskHandle != 0 )) == 0) {vPortRaiseBASEPRI(); for( ;; );};
	return xTimerTaskHandle;
}
 

TickType_t xTimerGetPeriod( TimerHandle_t xTimer )
{
Timer_t *pxTimer = ( Timer_t * ) xTimer;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};
	return pxTimer->xTimerPeriodInTicks;
}
 

TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer )
{
Timer_t * pxTimer = ( Timer_t * ) xTimer;
TickType_t xReturn;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};
	xReturn = ( ( &( pxTimer->xTimerListItem ) )->xItemValue );
	return xReturn;
}
 

const char * pcTimerGetName( TimerHandle_t xTimer )  
{
Timer_t *pxTimer = ( Timer_t * ) xTimer;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};
	return pxTimer->pcTimerName;
}
 

static void prvProcessExpiredTimer( const TickType_t xNextExpireTime, const TickType_t xTimeNow )
{
BaseType_t xResult;
Timer_t * const pxTimer = ( Timer_t * ) ( (&( ( pxCurrentTimerList )->xListEnd ))->pxNext->pvOwner );

	
 
	( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
	;

	
 
	if( pxTimer->uxAutoReload == ( UBaseType_t ) ( ( BaseType_t ) 1 ) )
	{
		

 
		if( prvInsertTimerInActiveList( pxTimer, ( xNextExpireTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xNextExpireTime ) != ( ( BaseType_t ) 0 ) )
		{
			
 
			xResult = xTimerGenericCommand( pxTimer, ( ( BaseType_t ) 0 ), xNextExpireTime, 0, ( TickType_t ) 0U );
			if ((xResult) == 0) {vPortRaiseBASEPRI(); for( ;; );};
			( void ) xResult;
		}
		else
		{
			;
		}
	}
	else
	{
		;
	}

	 
	pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
}
 

static void prvTimerTask( void *pvParameters )
{
TickType_t xNextExpireTime;
BaseType_t xListWasEmpty;

	 
	( void ) pvParameters;

#line 521 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"

	for( ;; )
	{
		
 
		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );

		
 
		prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );

		 
		prvProcessReceivedCommands();
	}
}
 

static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime, BaseType_t xListWasEmpty )
{
TickType_t xTimeNow;
BaseType_t xTimerListsWereSwitched;

	vTaskSuspendAll();
	{
		



 
		xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
		if( xTimerListsWereSwitched == ( ( BaseType_t ) 0 ) )
		{
			 
			if( ( xListWasEmpty == ( ( BaseType_t ) 0 ) ) && ( xNextExpireTime <= xTimeNow ) )
			{
				( void ) xTaskResumeAll();
				prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
			}
			else
			{
				




 
				if( xListWasEmpty != ( ( BaseType_t ) 0 ) )
				{
					
 
					xListWasEmpty = ( ( BaseType_t ) ( ( pxOverflowTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) );
				}

				vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );

				if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
				{
					


 
					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}
			}
		}
		else
		{
			( void ) xTaskResumeAll();
		}
	}
}
 

static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty )
{
TickType_t xNextExpireTime;

	





 
	*pxListWasEmpty = ( ( BaseType_t ) ( ( pxCurrentTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) );
	if( *pxListWasEmpty == ( ( BaseType_t ) 0 ) )
	{
		xNextExpireTime = ( ( ( pxCurrentTimerList )->xListEnd ). pxNext->xItemValue );
	}
	else
	{
		 
		xNextExpireTime = ( TickType_t ) 0U;
	}

	return xNextExpireTime;
}
 

static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched )
{
TickType_t xTimeNow;
 static TickType_t xLastTime = ( TickType_t ) 0U;  

	xTimeNow = xTaskGetTickCount();

	if( xTimeNow < xLastTime )
	{
		prvSwitchTimerLists();
		*pxTimerListsWereSwitched = ( ( BaseType_t ) 1 );
	}
	else
	{
		*pxTimerListsWereSwitched = ( ( BaseType_t ) 0 );
	}

	xLastTime = xTimeNow;

	return xTimeNow;
}
 

static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer, const TickType_t xNextExpiryTime, const TickType_t xTimeNow, const TickType_t xCommandTime )
{
BaseType_t xProcessTimerNow = ( ( BaseType_t ) 0 );

	( ( &( pxTimer->xTimerListItem ) )->xItemValue = ( xNextExpiryTime ) );
	( ( &( pxTimer->xTimerListItem ) )->pvOwner = ( void * ) ( pxTimer ) );

	if( xNextExpiryTime <= xTimeNow )
	{
		
 
		if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks )  
		{
			
 
			xProcessTimerNow = ( ( BaseType_t ) 1 );
		}
		else
		{
			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
		}
	}
	else
	{
		if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
		{
			

 
			xProcessTimerNow = ( ( BaseType_t ) 1 );
		}
		else
		{
			vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
		}
	}

	return xProcessTimerNow;
}
 

static void	prvProcessReceivedCommands( void )
{
DaemonTaskMessage_t xMessage;
Timer_t *pxTimer;
BaseType_t xTimerListsWereSwitched, xResult;
TickType_t xTimeNow;

	while( xQueueReceive( xTimerQueue, &xMessage, ( TickType_t ) 0U ) != ( ( ( BaseType_t ) 0 ) ) )  
	{

		{
			
 
			if( xMessage.xMessageID < ( BaseType_t ) 0 )
			{
				const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );

				
 
				if ((pxCallback) == 0) {vPortRaiseBASEPRI(); for( ;; );};

				 
				pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
			}
			else
			{
				;
			}
		}


		
 
		if( xMessage.xMessageID >= ( BaseType_t ) 0 )
		{
			
 
			pxTimer = xMessage.u.xTimerParameters.pxTimer;

			if( ( ( BaseType_t ) ( ( &( pxTimer->xTimerListItem ) )->pvContainer == ( void * ) ( 0 ) ) ) == ( ( BaseType_t ) 0 ) )  
			{
				 
				( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
			}
			else
			{
				;
			}

			;

			




 
			xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );

			switch( xMessage.xMessageID )
			{
				case ( ( BaseType_t ) 1 ) :
			    case ( ( BaseType_t ) 6 ) :
			    case ( ( BaseType_t ) 2 ) :
			    case ( ( BaseType_t ) 7 ) :
				case ( ( BaseType_t ) 0 ) :
					 
					if( prvInsertTimerInActiveList( pxTimer,  xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != ( ( BaseType_t ) 0 ) )
					{
						
 
						pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
						;

						if( pxTimer->uxAutoReload == ( UBaseType_t ) ( ( BaseType_t ) 1 ) )
						{
							xResult = xTimerGenericCommand( pxTimer, ( ( BaseType_t ) 0 ), xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, 0, ( TickType_t ) 0U );
							if ((xResult) == 0) {vPortRaiseBASEPRI(); for( ;; );};
							( void ) xResult;
						}
						else
						{
							;
						}
					}
					else
					{
						;
					}
					break;

				case ( ( BaseType_t ) 3 ) :
				case ( ( BaseType_t ) 8 ) :
					
 
					break;

				case ( ( BaseType_t ) 4 ) :
				case ( ( BaseType_t ) 9 ) :
					pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
					if ((( pxTimer->xTimerPeriodInTicks > 0 )) == 0) {vPortRaiseBASEPRI(); for( ;; );};

					




 
					( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
					break;

				case ( ( BaseType_t ) 5 ) :
					

 
#line 810 "../Middlewares/Third_Party/FreeRTOS/Source/timers.c"
					{
						

 
						if( pxTimer->ucStaticallyAllocated == ( uint8_t ) ( ( BaseType_t ) 0 ) )
						{
							vPortFree( pxTimer );
						}
						else
						{
							;
						}
					}

					break;

				default	:
					 
					break;
			}
		}
	}
}
 

static void prvSwitchTimerLists( void )
{
TickType_t xNextExpireTime, xReloadTime;
List_t *pxTemp;
Timer_t *pxTimer;
BaseType_t xResult;

	


 
	while( ( ( BaseType_t ) ( ( pxCurrentTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
	{
		xNextExpireTime = ( ( ( pxCurrentTimerList )->xListEnd ). pxNext->xItemValue );

		 
		pxTimer = ( Timer_t * ) ( (&( ( pxCurrentTimerList )->xListEnd ))->pxNext->pvOwner );
		( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
		;

		

 
		pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );

		if( pxTimer->uxAutoReload == ( UBaseType_t ) ( ( BaseType_t ) 1 ) )
		{
			




 
			xReloadTime = ( xNextExpireTime + pxTimer->xTimerPeriodInTicks );
			if( xReloadTime > xNextExpireTime )
			{
				( ( &( pxTimer->xTimerListItem ) )->xItemValue = ( xReloadTime ) );
				( ( &( pxTimer->xTimerListItem ) )->pvOwner = ( void * ) ( pxTimer ) );
				vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
			}
			else
			{
				xResult = xTimerGenericCommand( pxTimer, ( ( BaseType_t ) 0 ), xNextExpireTime, 0, ( TickType_t ) 0U );
				if ((xResult) == 0) {vPortRaiseBASEPRI(); for( ;; );};
				( void ) xResult;
			}
		}
		else
		{
			;
		}
	}

	pxTemp = pxCurrentTimerList;
	pxCurrentTimerList = pxOverflowTimerList;
	pxOverflowTimerList = pxTemp;
}
 

static void prvCheckForValidListAndQueue( void )
{
	

 
	vPortEnterCritical();
	{
		if( xTimerQueue == 0 )
		{
			vListInitialise( &xActiveTimerList1 );
			vListInitialise( &xActiveTimerList2 );
			pxCurrentTimerList = &xActiveTimerList1;
			pxOverflowTimerList = &xActiveTimerList2;


			{
				
 
				static StaticQueue_t xStaticTimerQueue;  
				static uint8_t ucStaticTimerQueueStorage[ ( size_t ) 10 * sizeof( DaemonTaskMessage_t ) ];  

				xTimerQueue = xQueueGenericCreateStatic( ( ( UBaseType_t ) 10 ), ( ( UBaseType_t ) sizeof( DaemonTaskMessage_t ) ), ( &( ucStaticTimerQueueStorage[ 0 ] ) ), ( &xStaticTimerQueue ), ( ( ( uint8_t ) 0U ) ) );
			}







			{
				if( xTimerQueue != 0 )
				{
					vQueueAddToRegistry( xTimerQueue, "TmrQ" );
				}
				else
				{
					;
				}
			}

		}
		else
		{
			;
		}
	}
	vPortExitCritical();
}
 

BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer )
{
BaseType_t xTimerIsInActiveList;
Timer_t *pxTimer = ( Timer_t * ) xTimer;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};

	 
	vPortEnterCritical();
	{
		

 
		xTimerIsInActiveList = ( BaseType_t ) !( ( ( BaseType_t ) ( ( &( pxTimer->xTimerListItem ) )->pvContainer == ( void * ) ( 0 ) ) ) );  
	}
	vPortExitCritical();

	return xTimerIsInActiveList;
}  
 

void *pvTimerGetTimerID( const TimerHandle_t xTimer )
{
Timer_t * const pxTimer = ( Timer_t * ) xTimer;
void *pvReturn;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};

	vPortEnterCritical();
	{
		pvReturn = pxTimer->pvTimerID;
	}
	vPortExitCritical();

	return pvReturn;
}
 

void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID )
{
Timer_t * const pxTimer = ( Timer_t * ) xTimer;

	if ((xTimer) == 0) {vPortRaiseBASEPRI(); for( ;; );};

	vPortEnterCritical();
	{
		pxTimer->pvTimerID = pvNewID;
	}
	vPortExitCritical();
}
 



	BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken )
	{
	DaemonTaskMessage_t xMessage;
	BaseType_t xReturn;

		
 
		xMessage.xMessageID = ( ( BaseType_t ) -2 );
		xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
		xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
		xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;

		xReturn = xQueueGenericSendFromISR( ( xTimerQueue ), ( &xMessage ), ( pxHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );

		;

		return xReturn;
	}


 



	BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait )
	{
	DaemonTaskMessage_t xMessage;
	BaseType_t xReturn;

		

 
		if ((xTimerQueue) == 0) {vPortRaiseBASEPRI(); for( ;; );};

		
 
		xMessage.xMessageID = ( ( BaseType_t ) -1 );
		xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
		xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
		xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;

		xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( xTicksToWait ), ( ( BaseType_t ) 0 ) );

		;

		return xReturn;
	}


 



	UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer )
	{
		return ( ( Timer_t * ) xTimer )->uxTimerNumber;
	}


 



	void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber )
	{
		( ( Timer_t * ) xTimer )->uxTimerNumber = uxTimerNumber;
	}


 



 




