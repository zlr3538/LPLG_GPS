///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.1.6676/W32 for ARM       23/Apr/2015  14:23:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  G:\test\LPLD_OSKinetis_V3_now02\lib\LPLD\HW\HW_DMA.c
//    Command line =  
//        G:\test\LPLD_OSKinetis_V3_now02\lib\LPLD\HW\HW_DMA.c -D LPLD_K60 -lCN
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\FLASH\List\
//        -lB
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\FLASH\List\
//        -o G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        E:\iar\arm\INC\c\DLib_Config_Normal.h -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\app\ -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\CPU\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\common\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\LPLD\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\FatFs\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\USB\common\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\USB\class\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\Security\
//        -I
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\..\..\..\lib\SQC\
//        -Ol -I E:\iar\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        G:\test\LPLD_OSKinetis_V3_now02\project\LPLD_OV7670\iar\FLASH\List\HW_DMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC DMA0_IRQHandler
        PUBLIC DMA10_IRQHandler
        PUBLIC DMA11_IRQHandler
        PUBLIC DMA12_IRQHandler
        PUBLIC DMA13_IRQHandler
        PUBLIC DMA14_IRQHandler
        PUBLIC DMA15_IRQHandler
        PUBLIC DMA1_IRQHandler
        PUBLIC DMA2_IRQHandler
        PUBLIC DMA3_IRQHandler
        PUBLIC DMA4_IRQHandler
        PUBLIC DMA5_IRQHandler
        PUBLIC DMA6_IRQHandler
        PUBLIC DMA7_IRQHandler
        PUBLIC DMA8_IRQHandler
        PUBLIC DMA9_IRQHandler
        PUBLIC DMA_ISR
        PUBLIC LPLD_DMA_DisableIrq
        PUBLIC LPLD_DMA_EnableIrq
        PUBLIC LPLD_DMA_Init
        PUBLIC LPLD_DMA_SoftwareStartService

// G:\test\LPLD_OSKinetis_V3_now02\lib\LPLD\HW\HW_DMA.c
//    1 /**
//    2  * @file HW_DMA.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief DMA�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        LDR.W    R2,??DataTable18  ;; 0xe000e100
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        LDR.W    R2,??DataTable18_1  ;; 0xe000e180
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_DMA.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 DMA_ISR_CALLBACK DMA_ISR[16];
DMA_ISR:
        DS8 64
//   27 
//   28 
//   29 /*
//   30  * LPLD_DMA_Init
//   31  * ��ʼ��eDMAģ��
//   32  * 
//   33  * ����:
//   34  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//   35  *                        ���嶨���DMA_InitTypeDef
//   36  *
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_DMA_Init(DMA_InitTypeDef dma_init_struct)
//   42 {
LPLD_DMA_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   43   uint8 chx = dma_init_struct.DMA_CHx;
        LDRB     R0,[SP, #+40]
//   44   uint8 req = dma_init_struct.DMA_Req;
        LDRB     R1,[SP, #+41]
        STRB     R1,[SP, #+1]
//   45   boolean periodic_trigg = dma_init_struct.DMA_PeriodicTriggerEnable;
        LDRB     R1,[SP, #+42]
        STRB     R1,[SP, #+0]
//   46   uint16 major_cnt = dma_init_struct.DMA_MajorLoopCnt;
        LDRH     R1,[SP, #+44]
//   47   uint32 minor_cnt = dma_init_struct.DMA_MinorByteCnt;
        LDR      R2,[SP, #+48]
//   48   uint32 src_addr = dma_init_struct.DMA_SourceAddr;
        LDR      R9,[SP, #+52]
//   49   uint8 src_dsize = dma_init_struct.DMA_SourceDataSize;
        LDRB     R3,[SP, #+56]
//   50   int16 src_addroffset = dma_init_struct.DMA_SourceAddrOffset;
        LDRSH    R4,[SP, #+58]
//   51   int32 src_lastadj = dma_init_struct.DMA_LastSourceAddrAdj;
        LDR      R5,[SP, #+60]
//   52   uint32 dst_addr = dma_init_struct.DMA_DestAddr;
        LDR      R6,[SP, #+64]
//   53   uint8 dst_dsize = dma_init_struct.DMA_DestDataSize;
        LDRB     R7,[SP, #+68]
//   54   int16 dst_addroffset = dma_init_struct.DMA_DestAddrOffset;
        LDRSH    R12,[SP, #+70]
//   55   int32 dst_lastadj = dma_init_struct.DMA_LastDestAddrAdj;
        LDR      LR,[SP, #+72]
//   56   boolean auto_disable = dma_init_struct.DMA_AutoDisableReq;
        LDRB     R8,[SP, #+76]
//   57   
//   58   //�������
//   59   ASSERT( chx <= DMA_CH15 );       //eDMAͨ��ѡ��
//   60   ASSERT( req <= DMA_MUX_63 );     //����Դѡ��
//   61   ASSERT( major_cnt <= 0x7FFF );   //�������ж�
//   62   ASSERT( src_addr != NULL );      //Դ��ַ�ж�
//   63   ASSERT( (src_dsize <= DMA_SRC_32BIT)||(src_dsize == DMA_SRC_16BYTE) );     //Դ���ݴ����С�ж�
//   64   ASSERT( dst_addr != NULL );      //Ŀ�ĵ�ַ�ж�
//   65   ASSERT( (dst_dsize <= DMA_DST_32BIT)||(dst_dsize == DMA_DST_16BYTE) );     //Ŀ�����ݴ����С�ж�
//   66  
//   67   SIM->SCGC6 |= SIM_SCGC6_DMAMUX_MASK;  //��DMAͨ����·������ʱ��   
        LDR.W    R10,??DataTable18_2  ;; 0x4004803c
        LDR      R10,[R10, #+0]
        ORRS     R10,R10,#0x2
        LDR.W    R11,??DataTable18_2  ;; 0x4004803c
        STR      R10,[R11, #+0]
//   68   SIM->SCGC7 |= SIM_SCGC7_DMA_MASK;     //��DMAģ��ʱ��
        LDR.W    R10,??DataTable18_3  ;; 0x40048040
        LDR      R10,[R10, #+0]
        ORRS     R10,R10,#0x2
        LDR.W    R11,??DataTable18_3  ;; 0x40048040
        STR      R10,[R11, #+0]
//   69   
//   70   //�ر�ͨ��xӲ��DMA���� 
//   71   DMA0->ERQ &= ~(1<<chx);
        LDR.W    R10,??DataTable18_4  ;; 0x4000800c
        LDR      R10,[R10, #+0]
        MOVS     R11,#+1
        LSLS     R11,R11,R0
        BICS     R10,R10,R11
        LDR.W    R11,??DataTable18_4  ;; 0x4000800c
        STR      R10,[R11, #+0]
//   72   
//   73   //ѡ�� ͨ��x ���������DMAԴ������
//   74   DMAMUX->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
        LDRB     R10,[SP, #+1]
        ANDS     R10,R10,#0x3F
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        STRB     R10,[R0, R11]
//   75   //�Ƿ�ʹ�����ڴ�������
//   76   if(periodic_trigg == TRUE)
        LDRB     R10,[SP, #+0]
        CMP      R10,#+1
        BNE.N    ??LPLD_DMA_Init_0
//   77   {
//   78     DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R10,??DataTable18_5  ;; 0x40021000
        LDRB     R10,[R0, R10]
        ORRS     R10,R10,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        STRB     R10,[R0, R11]
        B.N      ??LPLD_DMA_Init_1
//   79   }
//   80   else
//   81   {
//   82     DMAMUX->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
??LPLD_DMA_Init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R10,??DataTable18_5  ;; 0x40021000
        LDRB     R10,[R0, R10]
        ANDS     R10,R10,#0xBF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R11,??DataTable18_5  ;; 0x40021000
        STRB     R10,[R0, R11]
//   83   }
//   84   
//   85   
//   86   //����Դ��ַ   
//   87   DMA0->TCD[chx].SADDR = DMA_SADDR_SADDR(src_addr);
??LPLD_DMA_Init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R10,R0,#+5
        LDR.W    R11,??DataTable18_6  ;; 0x40009000
        STR      R9,[R10, R11]
//   88   //��ִ�������Դ��ַ�Ĳ���֮����Դ��ַ�Ļ���������/����ƫ�Ƶ�ַ
//   89   DMA0->TCD[chx].SOFF = DMA_SOFF_SOFF(src_addroffset);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R9,R0,#+5
        ADD      R9,R9,#+1073741824
        ADDS     R9,R9,#+36864
        STRH     R4,[R9, #+4]
//   90   //����Դ��ַ�Ĵ����С
//   91   DMA0->TCD[chx].ATTR = 0 | DMA_ATTR_SSIZE(src_dsize);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+8
        ANDS     R3,R3,#0x700
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+6]
//   92   //���ļ���������major iteration count���ﵽ�����µ���Դ��ַ
//   93   DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(src_lastadj);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      R5,[R3, #+12]
//   94   
//   95   //����Ŀ�ĵ�ַ 
//   96   DMA0->TCD[chx].DADDR = DMA_DADDR_DADDR(dst_addr);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      R6,[R3, #+16]
//   97   //��ִ�������Ŀ�ĵ�ַ�Ĳ���֮����Ŀ�ĵ�ַ�Ļ���������/����ƫ�Ƶ�ַ
//   98   DMA0->TCD[chx].DOFF = DMA_DOFF_DOFF(dst_addroffset);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STRH     R12,[R3, #+20]
//   99   //����Ŀ�ĵ�ַ�Ĵ������
//  100   DMA0->TCD[chx].ATTR |= DMA_ATTR_DSIZE(dst_dsize);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        LDRH     R3,[R3, #+6]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R4,R7,#0x7
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+6]
//  101   //���ļ���������major iteration count���ﵽ�����µ���Ŀ�ĵ�ַ
//  102   DMA0->TCD[chx].DLAST_SGA = DMA_DLAST_SGA_DLASTSGA(dst_lastadj);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STR      LR,[R3, #+24]
//  103   
//  104   //Ĭ��Ϊ����ͨ�����ӹ��ܣ������������Ӵ˹���
//  105   if( 1 == 1)
//  106   {
//  107     //===============���������������ȣ�ѭ������====================================
//  108     //������ѭ�������� current major loop count
//  109     DMA0->TCD[chx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R3,R1,#+17       ;; ZeroExtS R3,R1,#+17,#+17
        LSRS     R3,R3,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R3,[R4, #+22]
//  110     //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
//  111     DMA0->TCD[chx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+36864
        STRH     R1,[R3, #+30]
//  112   }
//  113   
//  114   //Ĭ��Ϊ���ô�ѭ����ַƫ�ƹ��ܣ������������Ӵ˹���
//  115   if( 1 == 1)
//  116   {
//  117     //��ѭ��һ�δ����ֽڵĸ���
//  118     DMA0->TCD[chx].NBYTES_MLNO = DMA_NBYTES_MLNO_NBYTES(minor_cnt);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R2,[R1, #+8]
//  119   }
//  120   
//  121   //���TCD���ƼĴ���     
//  122   DMA0->TCD[chx].CSR = 0;
        MOVS     R1,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  123   
//  124   //����eDMA�ж�
//  125   if((dma_init_struct.DMA_Isr != NULL) && 
//  126      (dma_init_struct.DMA_MajorCompleteIntEnable == TRUE))
        LDR      R1,[SP, #+80]
        CMP      R1,#+0
        BEQ.N    ??LPLD_DMA_Init_2
        LDRB     R1,[SP, #+77]
        CMP      R1,#+1
        BNE.N    ??LPLD_DMA_Init_2
//  127   {
//  128 
//  129        DMA0->TCD[chx].CSR |= DMA_CSR_INTMAJOR_MASK; //ʹ��DMA ��ѭ�������������� �ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  130        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R1,[SP, #+80]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable18_7
        STR      R1,[R2, R0, LSL #+2]
//  131   }
//  132   if((dma_init_struct.DMA_Isr != NULL) && 
//  133      (dma_init_struct.DMA_MajorHalfCompleteIntEnable == TRUE))
??LPLD_DMA_Init_2:
        LDR      R1,[SP, #+80]
        CMP      R1,#+0
        BEQ.N    ??LPLD_DMA_Init_3
        LDRB     R1,[SP, #+78]
        CMP      R1,#+1
        BNE.N    ??LPLD_DMA_Init_3
//  134   {
//  135 
//  136        DMA0->TCD[chx].CSR |= DMA_CSR_INTHALF_MASK; //ʹ��DMA ��ѭ������������һ�� �ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  137        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R1,[SP, #+80]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable18_7
        STR      R1,[R2, R0, LSL #+2]
//  138   }
//  139     
//  140   if(auto_disable == TRUE)
??LPLD_DMA_Init_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_DMA_Init_4
//  141   {
//  142      DMA0->TCD[chx].CSR |= DMA_CSR_DREQ_MASK; //��ѭ����������������Զ��ر�DMA 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
        B.N      ??LPLD_DMA_Init_5
//  143   }
//  144   else
//  145   {
//  146      DMA0->TCD[chx].CSR &= ~(DMA_CSR_DREQ_MASK); //��ѭ��������������󣬲��ر�DMA
??LPLD_DMA_Init_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        MOVW     R2,#+65527
        ANDS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  147   } 
//  148  
//  149   //DMAͨ��ʹ��
//  150   DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
??LPLD_DMA_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable18_5  ;; 0x40021000
        LDRB     R1,[R0, R1]
        ORRS     R1,R1,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable18_5  ;; 0x40021000
        STRB     R1,[R0, R2]
//  151     
//  152   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  153 }
//  154 
//  155 /*
//  156  * LPLD_DMA_EnableIrq
//  157  * ʹ��eDMA�ж�
//  158  * 
//  159  * ����:
//  160  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  161  *                        ���嶨���DMA_InitTypeDef
//  162  *
//  163  * ���:
//  164  *    0--ʧ��
//  165  *    1--�ɹ�
//  166  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 uint8 LPLD_DMA_EnableIrq(DMA_InitTypeDef dma_init_struct)
//  168 {
LPLD_DMA_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  169   enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn));  
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  170   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  171 }
//  172 
//  173 /*
//  174  * LPLD_DMA_DisableIrq
//  175  * ����eDMA�ж�
//  176  * 
//  177  * ����:
//  178  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  179  *                        ���嶨���DMA_InitTypeDef
//  180  *
//  181  * ���:
//  182  *    0--ʧ��
//  183  *    1--�ɹ�
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint8 LPLD_DMA_DisableIrq(DMA_InitTypeDef dma_init_struct)
//  186 {
LPLD_DMA_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  187   disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn));
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  188   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  189 }
//  190 
//  191 /*
//  192  * LPLD_DMA_SoftwareStartService
//  193  * DMA��������������ʼ
//  194  * 
//  195  * ����:
//  196  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  197  *                        ���嶨���DMA_InitTypeDef
//  198  *
//  199  * ���:
//  200  *    ��
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 __INLINE void LPLD_DMA_SoftwareStartService(DMA_InitTypeDef dma_init_struct)
//  203 {
LPLD_DMA_SoftwareStartService:
        PUSH     {R0-R3}
//  204   DMA0->TCD[dma_init_struct.DMA_CHx].CSR |= DMA_CSR_START_MASK; 
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x1
        LDRB     R1,[SP, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+28]
//  205 }
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  206 
//  207 /*
//  208  * eDMA�жϴ�������
//  209  * �������ļ�startup_K60.s�е��ж�����������
//  210  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  211  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void DMA0_IRQHandler(void)
//  213 {
DMA0_IRQHandler:
        PUSH     {R7,LR}
//  214 #if (UCOS_II > 0u)
//  215   OS_CPU_SR  cpu_sr = 0u;
//  216   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  217   OSIntEnter();
//  218   OS_EXIT_CRITICAL();
//  219 #endif  
//  220   
//  221   //�����û��Զ����жϷ���
//  222   DMA_ISR[0]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  223   //����жϱ�־λ
//  224   DMA0->INT |= 0x1u<<0;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  225   
//  226 #if (UCOS_II > 0u)
//  227   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  228 #endif
//  229 }
        POP      {R0,PC}          ;; return
//  230 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void DMA1_IRQHandler(void)
//  232 {
DMA1_IRQHandler:
        PUSH     {R7,LR}
//  233 #if (UCOS_II > 0u)
//  234   OS_CPU_SR  cpu_sr = 0u;
//  235   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  236   OSIntEnter();
//  237   OS_EXIT_CRITICAL();
//  238 #endif  
//  239   
//  240   //�����û��Զ����жϷ���
//  241   DMA_ISR[1]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+4]
        BLX      R0
//  242   //����жϱ�־λ
//  243   DMA0->INT |= 0x1u<<1;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  244   
//  245 #if (UCOS_II > 0u)
//  246   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  247 #endif
//  248 }
        POP      {R0,PC}          ;; return
//  249 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 void DMA2_IRQHandler(void)
//  251 {
DMA2_IRQHandler:
        PUSH     {R7,LR}
//  252 #if (UCOS_II > 0u)
//  253   OS_CPU_SR  cpu_sr = 0u;
//  254   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  255   OSIntEnter();
//  256   OS_EXIT_CRITICAL();
//  257 #endif  
//  258   
//  259   //�����û��Զ����жϷ���
//  260   DMA_ISR[2]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+8]
        BLX      R0
//  261   //����жϱ�־λ
//  262   DMA0->INT |= 0x1u<<2;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  263   
//  264 #if (UCOS_II > 0u)
//  265   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  266 #endif
//  267 }
        POP      {R0,PC}          ;; return
//  268 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  269 void DMA3_IRQHandler(void)
//  270 {
DMA3_IRQHandler:
        PUSH     {R7,LR}
//  271 #if (UCOS_II > 0u)
//  272   OS_CPU_SR  cpu_sr = 0u;
//  273   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  274   OSIntEnter();
//  275   OS_EXIT_CRITICAL();
//  276 #endif  
//  277   
//  278   //�����û��Զ����жϷ���
//  279   DMA_ISR[3]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+12]
        BLX      R0
//  280   //����жϱ�־λ
//  281   DMA0->INT |= 0x1u<<3;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  282   
//  283 #if (UCOS_II > 0u)
//  284   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  285 #endif
//  286 }
        POP      {R0,PC}          ;; return
//  287 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void DMA4_IRQHandler(void)
//  289 {
DMA4_IRQHandler:
        PUSH     {R7,LR}
//  290 #if (UCOS_II > 0u)
//  291   OS_CPU_SR  cpu_sr = 0u;
//  292   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  293   OSIntEnter();
//  294   OS_EXIT_CRITICAL();
//  295 #endif  
//  296   
//  297   //�����û��Զ����жϷ���
//  298   DMA_ISR[4]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+16]
        BLX      R0
//  299   //����жϱ�־λ
//  300   DMA0->INT |= 0x1u<<4;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  301   
//  302 #if (UCOS_II > 0u)
//  303   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  304 #endif
//  305 }
        POP      {R0,PC}          ;; return
//  306 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 void DMA5_IRQHandler(void)
//  308 {
DMA5_IRQHandler:
        PUSH     {R7,LR}
//  309 #if (UCOS_II > 0u)
//  310   OS_CPU_SR  cpu_sr = 0u;
//  311   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  312   OSIntEnter();
//  313   OS_EXIT_CRITICAL();
//  314 #endif  
//  315   
//  316   //�����û��Զ����жϷ���
//  317   DMA_ISR[5]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+20]
        BLX      R0
//  318   //����жϱ�־λ
//  319   DMA0->INT |= 0x1u<<5;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  320   
//  321 #if (UCOS_II > 0u)
//  322   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  323 #endif
//  324 }
        POP      {R0,PC}          ;; return
//  325 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  326 void DMA6_IRQHandler(void)
//  327 {
DMA6_IRQHandler:
        PUSH     {R7,LR}
//  328 #if (UCOS_II > 0u)
//  329   OS_CPU_SR  cpu_sr = 0u;
//  330   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  331   OSIntEnter();
//  332   OS_EXIT_CRITICAL();
//  333 #endif  
//  334   
//  335   //�����û��Զ����жϷ���
//  336   DMA_ISR[6]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+24]
        BLX      R0
//  337   //����жϱ�־λ
//  338   DMA0->INT |= 0x1u<<6;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  339   
//  340 #if (UCOS_II > 0u)
//  341   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  342 #endif
//  343 }
        POP      {R0,PC}          ;; return
//  344 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 void DMA7_IRQHandler(void)
//  346 {
DMA7_IRQHandler:
        PUSH     {R7,LR}
//  347 #if (UCOS_II > 0u)
//  348   OS_CPU_SR  cpu_sr = 0u;
//  349   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  350   OSIntEnter();
//  351   OS_EXIT_CRITICAL();
//  352 #endif  
//  353   
//  354   //�����û��Զ����жϷ���
//  355   DMA_ISR[7]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+28]
        BLX      R0
//  356   //����жϱ�־λ
//  357   DMA0->INT |= 0x1u<<7;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  358   
//  359 #if (UCOS_II > 0u)
//  360   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  361 #endif
//  362 }
        POP      {R0,PC}          ;; return
//  363 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  364 void DMA8_IRQHandler(void)
//  365 {
DMA8_IRQHandler:
        PUSH     {R7,LR}
//  366 #if (UCOS_II > 0u)
//  367   OS_CPU_SR  cpu_sr = 0u;
//  368   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  369   OSIntEnter();
//  370   OS_EXIT_CRITICAL();
//  371 #endif  
//  372   
//  373   //�����û��Զ����жϷ���
//  374   DMA_ISR[8]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+32]
        BLX      R0
//  375   //����жϱ�־λ
//  376   DMA0->INT |= 0x1u<<8;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  377   
//  378 #if (UCOS_II > 0u)
//  379   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  380 #endif
//  381 }
        POP      {R0,PC}          ;; return
//  382 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 void DMA9_IRQHandler(void)
//  384 {
DMA9_IRQHandler:
        PUSH     {R7,LR}
//  385 #if (UCOS_II > 0u)
//  386   OS_CPU_SR  cpu_sr = 0u;
//  387   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  388   OSIntEnter();
//  389   OS_EXIT_CRITICAL();
//  390 #endif  
//  391   
//  392   //�����û��Զ����жϷ���
//  393   DMA_ISR[9]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+36]
        BLX      R0
//  394   //����жϱ�־λ
//  395   DMA0->INT |= 0x1u<<9;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  396   
//  397 #if (UCOS_II > 0u)
//  398   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  399 #endif
//  400 }
        POP      {R0,PC}          ;; return
//  401 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  402 void DMA10_IRQHandler(void)
//  403 {
DMA10_IRQHandler:
        PUSH     {R7,LR}
//  404 #if (UCOS_II > 0u)
//  405   OS_CPU_SR  cpu_sr = 0u;
//  406   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  407   OSIntEnter();
//  408   OS_EXIT_CRITICAL();
//  409 #endif  
//  410   
//  411   //�����û��Զ����жϷ���
//  412   DMA_ISR[10]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+40]
        BLX      R0
//  413   //����жϱ�־λ
//  414   DMA0->INT |= 0x1u<10;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  415   
//  416 #if (UCOS_II > 0u)
//  417   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  418 #endif
//  419 }
        POP      {R0,PC}          ;; return
//  420 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 void DMA11_IRQHandler(void)
//  422 {
DMA11_IRQHandler:
        PUSH     {R7,LR}
//  423 #if (UCOS_II > 0u)
//  424   OS_CPU_SR  cpu_sr = 0u;
//  425   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  426   OSIntEnter();
//  427   OS_EXIT_CRITICAL();
//  428 #endif  
//  429   
//  430   //�����û��Զ����жϷ���
//  431   DMA_ISR[11]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+44]
        BLX      R0
//  432   //����жϱ�־λ
//  433   DMA0->INT |= 0x1u<<11;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  434   
//  435 #if (UCOS_II > 0u)
//  436   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  437 #endif
//  438 }
        POP      {R0,PC}          ;; return
//  439 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 void DMA12_IRQHandler(void)
//  441 {
DMA12_IRQHandler:
        PUSH     {R7,LR}
//  442 #if (UCOS_II > 0u)
//  443   OS_CPU_SR  cpu_sr = 0u;
//  444   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  445   OSIntEnter();
//  446   OS_EXIT_CRITICAL();
//  447 #endif  
//  448   
//  449   //�����û��Զ����жϷ���
//  450   DMA_ISR[12]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+48]
        BLX      R0
//  451   //����жϱ�־λ
//  452   DMA0->INT |= 0x1u<<12;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  453   
//  454 #if (UCOS_II > 0u)
//  455   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  456 #endif
//  457 }
        POP      {R0,PC}          ;; return
//  458 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  459 void DMA13_IRQHandler(void)
//  460 {
DMA13_IRQHandler:
        PUSH     {R7,LR}
//  461 #if (UCOS_II > 0u)
//  462   OS_CPU_SR  cpu_sr = 0u;
//  463   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  464   OSIntEnter();
//  465   OS_EXIT_CRITICAL();
//  466 #endif  
//  467   
//  468   //�����û��Զ����жϷ���
//  469   DMA_ISR[13]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+52]
        BLX      R0
//  470   //����жϱ�־λ
//  471   DMA0->INT |= 0x1u<<13;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  472   
//  473 #if (UCOS_II > 0u)
//  474   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  475 #endif
//  476 }
        POP      {R0,PC}          ;; return
//  477 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  478 void DMA14_IRQHandler(void)
//  479 {
DMA14_IRQHandler:
        PUSH     {R7,LR}
//  480 #if (UCOS_II > 0u)
//  481   OS_CPU_SR  cpu_sr = 0u;
//  482   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  483   OSIntEnter();
//  484   OS_EXIT_CRITICAL();
//  485 #endif  
//  486   
//  487   //�����û��Զ����жϷ���
//  488   DMA_ISR[14]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+56]
        BLX      R0
//  489   //����жϱ�־λ
//  490   DMA0->INT |= 0x1u<<14;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  491   
//  492 #if (UCOS_II > 0u)
//  493   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  494 #endif
//  495 }
        POP      {R0,PC}          ;; return
//  496 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  497 void DMA15_IRQHandler(void)
//  498 {
DMA15_IRQHandler:
        PUSH     {R7,LR}
//  499 #if (UCOS_II > 0u)
//  500   OS_CPU_SR  cpu_sr = 0u;
//  501   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  502   OSIntEnter();
//  503   OS_EXIT_CRITICAL();
//  504 #endif  
//  505   
//  506   //�����û��Զ����жϷ���
//  507   DMA_ISR[15]();
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+60]
        BLX      R0
//  508   //����жϱ�־λ
//  509   DMA0->INT |= 0x1u<<15;
        LDR.N    R0,??DataTable18_8  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable18_8  ;; 0x40008024
        STR      R0,[R1, #+0]
//  510   
//  511 #if (UCOS_II > 0u)
//  512   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  513 #endif
//  514 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     DMA_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     0x40008024

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  515 
//  516 
//  517 
//  518 
//  519 
//  520 
//  521 
//  522 
//  523 
//  524 
//  525 
//  526 
//  527 
//  528 
//  529 
//  530 
// 
//    64 bytes in section .bss
// 1 160 bytes in section .text
// 
// 1 160 bytes of CODE memory
//    64 bytes of DATA memory
//
//Errors: none
//Warnings: none