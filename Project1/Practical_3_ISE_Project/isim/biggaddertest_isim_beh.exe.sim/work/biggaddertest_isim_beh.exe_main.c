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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_16345054710503169141_1017851315_init();
    work_m_13274526405271427390_2902715030_init();
    work_m_15443225304352824100_3015530496_init();
    work_m_12952377334547026948_2499549766_init();
    work_m_10764087207863065690_2073120511_init();


    xsi_register_tops("work_m_12952377334547026948_2499549766");
    xsi_register_tops("work_m_10764087207863065690_2073120511");


    return xsi_run_simulation(argc, argv);

}
