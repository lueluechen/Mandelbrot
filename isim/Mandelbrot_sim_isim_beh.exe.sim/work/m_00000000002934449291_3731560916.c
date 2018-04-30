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
static const char *ng0 = "F:/file/homework/Logic_and_computer_design/MANDELBROT-master/mandelbrot1.04_64bit/paste/mandelbrotColor.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {20U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {257U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {512U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {1024U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {1536U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {2080U, 0U};
static unsigned int ng13[] = {6U, 0U};
static unsigned int ng14[] = {2897U, 0U};
static unsigned int ng15[] = {7U, 0U};
static unsigned int ng16[] = {3443U, 0U};
static unsigned int ng17[] = {8U, 0U};
static unsigned int ng18[] = {3768U, 0U};
static unsigned int ng19[] = {9U, 0U};
static unsigned int ng20[] = {4077U, 0U};
static unsigned int ng21[] = {10U, 0U};
static unsigned int ng22[] = {3055U, 0U};
static unsigned int ng23[] = {11U, 0U};
static unsigned int ng24[] = {1487U, 0U};
static unsigned int ng25[] = {12U, 0U};
static unsigned int ng26[] = {207U, 0U};
static unsigned int ng27[] = {13U, 0U};
static unsigned int ng28[] = {140U, 0U};
static unsigned int ng29[] = {14U, 0U};
static unsigned int ng30[] = {89U, 0U};
static unsigned int ng31[] = {15U, 0U};
static unsigned int ng32[] = {54U, 0U};



static void Always_28_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 4);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB6:    t6 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 12);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng31)));
    t15 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 12);
    if (t15 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:
LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(31, ng0);
    t7 = ((char*)((ng2)));
    t14 = (t0 + 1608);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 12);
    goto LAB41;

LAB9:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng4)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB11:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng6)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB13:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng8)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB15:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng10)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB17:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng12)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB19:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng14)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB21:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng16)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB23:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng18)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB25:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng20)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB27:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng22)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB29:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng24)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB31:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng26)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB33:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng28)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB35:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng30)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

LAB37:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng32)));
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 12);
    goto LAB41;

}


extern void work_m_00000000002934449291_3731560916_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000002934449291_3731560916", "isim/Mandelbrot_sim_isim_beh.exe.sim/work/m_00000000002934449291_3731560916.didat");
	xsi_register_executes(pe);
}
