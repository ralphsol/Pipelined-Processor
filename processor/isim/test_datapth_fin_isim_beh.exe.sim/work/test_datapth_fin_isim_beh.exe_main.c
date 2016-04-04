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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_3479154030_3212880686_init();
    work_a_1707665227_3212880686_init();
    work_a_1111616105_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0253068099_3212880686_init();
    work_a_1613803670_3212880686_init();
    work_a_0424165756_3212880686_init();
    work_a_1505594451_3212880686_init();
    work_a_3073701636_3212880686_init();
    work_a_1321637904_3212880686_init();
    work_a_3327597146_3212880686_init();
    work_a_0241023935_3212880686_init();
    work_a_0715650521_3212880686_init();
    work_a_1384079065_3212880686_init();
    work_a_2333730024_3212880686_init();
    work_a_2996099117_3212880686_init();
    work_a_2783956078_3212880686_init();
    work_a_3247350183_3212880686_init();
    work_a_3606427108_3212880686_init();
    work_a_0717777481_3212880686_init();
    work_a_0323311244_3212880686_init();
    work_a_0071189199_3212880686_init();
    work_a_3979056220_3212880686_init();
    work_a_3567691929_3212880686_init();
    work_a_3286088922_3212880686_init();
    work_a_2069255265_3212880686_init();
    work_a_1172000822_2372691052_init();


    xsi_register_tops("work_a_1172000822_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
