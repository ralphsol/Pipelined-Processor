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
static const char *ng0 = "D:/Assignment3/addb.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0241023935_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4348U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t2);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4364U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t5);
    t8 = (t4 + t7);
    t9 = (t8 + 4);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t1, t9, 32);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 32U);
    xsi_driver_first_trans_fast_port(t11);
    t2 = (t0 + 2832);
    *((int *)t2) = 1;

LAB1:    return;
}


extern void work_a_0241023935_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0241023935_3212880686_p_0};
	xsi_register_didat("work_a_0241023935_3212880686", "isim/controller_isim_beh.exe.sim/work/a_0241023935_3212880686.didat");
	xsi_register_executes(pe);
}
