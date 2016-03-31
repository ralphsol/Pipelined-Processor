/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/processor/datamem.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2646115994_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    int t27;
    char *t28;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t5 = t1;
    t6 = (t0 + 7232);
    if (1 == 1)
        goto LAB5;

LAB6:    t8 = 255;

LAB7:    t9 = (t8 - 0);
    t10 = (t9 * 1);
    t11 = (4U * t10);
    t12 = (t5 + t11);
    t13 = (4U * 256U);
    t14 = (4U != 0);
    if (t14 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 3976);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 1024U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB5:    t8 = 0;
    goto LAB7;

LAB8:    t15 = (t13 / 4U);
    xsi_mem_set_data(t12, t6, 4U, t15);
    goto LAB9;

LAB10:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t23 = *((unsigned char *)t6);
    t24 = (t23 == (unsigned char)3);
    if (t24 == 1)
        goto LAB19;

LAB20:    t22 = (unsigned char)0;

LAB21:    if (t22 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t21 = (t14 == (unsigned char)3);
    t3 = t21;
    goto LAB15;

LAB16:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1832U);
    t12 = *((char **)t2);
    t2 = (t0 + 1672U);
    t16 = *((char **)t2);
    t2 = (t0 + 6080U);
    t9 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t16, t2);
    t27 = (t9 - 0);
    t8 = (t27 * 1);
    t10 = (4U * t8);
    t11 = (0U + t10);
    t17 = (t0 + 3976);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t28 = *((char **)t20);
    memcpy(t28, t12, 4U);
    xsi_driver_first_trans_delta(t17, t11, 4U, 0LL);
    goto LAB17;

LAB19:    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t25 = *((unsigned char *)t7);
    t26 = (t25 == (unsigned char)2);
    t22 = t26;
    goto LAB21;

}

static void work_a_2646115994_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 3896);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 7236);
    t6 = (t0 + 4040);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB14;

LAB15:    t13 = (unsigned char)0;

LAB16:    if (t13 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB6;

LAB8:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2152U);
    t8 = *((char **)t2);
    t2 = (t0 + 1672U);
    t9 = *((char **)t2);
    t2 = (t0 + 6080U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t2);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t18);
    t21 = (4U * t20);
    t22 = (0 + t21);
    t10 = (t8 + t22);
    t23 = (t0 + 4040);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t10, 32U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB12;

LAB14:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)2);
    t13 = t17;
    goto LAB16;

}


extern void work_a_2646115994_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2646115994_3212880686_p_0,(void *)work_a_2646115994_3212880686_p_1};
	xsi_register_didat("work_a_2646115994_3212880686", "isim/datamem_isim_beh.exe.sim/work/a_2646115994_3212880686.didat");
	xsi_register_executes(pe);
}
