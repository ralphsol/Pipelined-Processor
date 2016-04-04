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
static const char *ng0 = "D:/processor/datapath_fin.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2069255265_3212880686_p_0(char *t0)
{
    char t16[16];
    char t26[16];
    char t36[16];
    char t46[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;
    char *t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned char t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(173, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = (27 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3432U);
    t9 = *((char **)t8);
    t10 = (26 - 31);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t17 = ((IEEE_P_2592010699) + 4024);
    t15 = xsi_base_array_concat(t15, t16, t17, (char)99, t7, (char)99, t14, (char)101);
    t18 = (t0 + 3432U);
    t19 = *((char **)t18);
    t20 = (24 - 31);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t18 = (t19 + t23);
    t24 = *((unsigned char *)t18);
    t27 = ((IEEE_P_2592010699) + 4024);
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t15, t16, (char)99, t24, (char)101);
    t28 = (t0 + 3432U);
    t29 = *((char **)t28);
    t30 = (23 - 31);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t28 = (t29 + t33);
    t34 = *((unsigned char *)t28);
    t37 = ((IEEE_P_2592010699) + 4024);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t25, t26, (char)99, t34, (char)101);
    t38 = (t0 + 3432U);
    t39 = *((char **)t38);
    t40 = (20 - 31);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t38 = (t39 + t43);
    t44 = *((unsigned char *)t38);
    t47 = ((IEEE_P_2592010699) + 4024);
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t35, t36, (char)99, t44, (char)101);
    t48 = (1U + 1U);
    t49 = (t48 + 1U);
    t50 = (t49 + 1U);
    t51 = (t50 + 1U);
    t52 = (5U != t51);
    if (t52 == 1)
        goto LAB5;

LAB6:    t53 = (t0 + 7232);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t45, 5U);
    xsi_driver_first_trans_fast(t53);

LAB2:    t58 = (t0 + 7152);
    *((int *)t58) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t51, 0);
    goto LAB6;

}


extern void work_a_2069255265_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2069255265_3212880686_p_0};
	xsi_register_didat("work_a_2069255265_3212880686", "isim/test_datpath_fin_isim_beh.exe.sim/work/a_2069255265_3212880686.didat");
	xsi_register_executes(pe);
}
