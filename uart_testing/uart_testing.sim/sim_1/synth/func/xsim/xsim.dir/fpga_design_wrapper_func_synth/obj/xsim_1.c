/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_171(char*, char *);
extern void execute_175(char*, char *);
extern void execute_184(char*, char *);
extern void execute_188(char*, char *);
extern void execute_193(char*, char *);
extern void execute_197(char*, char *);
extern void execute_202(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_212(char*, char *);
extern void execute_213(char*, char *);
extern void execute_214(char*, char *);
extern void execute_226(char*, char *);
extern void execute_229(char*, char *);
extern void execute_234(char*, char *);
extern void execute_241(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_250(char*, char *);
extern void execute_255(char*, char *);
extern void execute_258(char*, char *);
extern void execute_281(char*, char *);
extern void execute_288(char*, char *);
extern void execute_389(char*, char *);
extern void execute_392(char*, char *);
extern void execute_464(char*, char *);
extern void execute_467(char*, char *);
extern void execute_470(char*, char *);
extern void execute_490(char*, char *);
extern void execute_496(char*, char *);
extern void execute_497(char*, char *);
extern void execute_498(char*, char *);
extern void execute_501(char*, char *);
extern void execute_503(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_508(char*, char *);
extern void execute_509(char*, char *);
extern void execute_513(char*, char *);
extern void execute_517(char*, char *);
extern void execute_521(char*, char *);
extern void execute_523(char*, char *);
extern void execute_538(char*, char *);
extern void execute_546(char*, char *);
extern void execute_555(char*, char *);
extern void execute_562(char*, char *);
extern void execute_567(char*, char *);
extern void execute_571(char*, char *);
extern void execute_576(char*, char *);
extern void execute_580(char*, char *);
extern void execute_636(char*, char *);
extern void execute_640(char*, char *);
extern void execute_660(char*, char *);
extern void execute_704(char*, char *);
extern void execute_708(char*, char *);
extern void execute_712(char*, char *);
extern void execute_717(char*, char *);
extern void execute_736(char*, char *);
extern void execute_740(char*, char *);
extern void execute_903(char*, char *);
extern void execute_910(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_306(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_327(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_334(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_348(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_426(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_475(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_503(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_552(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_566(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_681(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_751(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_786(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_793(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_800(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_814(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_821(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_828(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_835(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_842(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_849(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_863(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_870(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_877(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_884(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_891(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_898(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_905(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_912(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_919(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_926(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_933(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_940(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_947(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_954(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_961(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_968(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_975(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_982(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_989(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_996(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1003(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1010(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1017(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1024(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1031(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1038(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1045(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1052(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1059(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1066(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1073(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1080(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[197] = {(funcp)execute_20, (funcp)execute_21, (funcp)execute_26, (funcp)execute_27, (funcp)execute_159, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_164, (funcp)execute_166, (funcp)execute_167, (funcp)execute_171, (funcp)execute_175, (funcp)execute_184, (funcp)execute_188, (funcp)execute_193, (funcp)execute_197, (funcp)execute_202, (funcp)execute_207, (funcp)execute_210, (funcp)execute_212, (funcp)execute_213, (funcp)execute_214, (funcp)execute_226, (funcp)execute_229, (funcp)execute_234, (funcp)execute_241, (funcp)execute_245, (funcp)execute_247, (funcp)execute_250, (funcp)execute_255, (funcp)execute_258, (funcp)execute_281, (funcp)execute_288, (funcp)execute_389, (funcp)execute_392, (funcp)execute_464, (funcp)execute_467, (funcp)execute_470, (funcp)execute_490, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)execute_501, (funcp)execute_503, (funcp)execute_506, (funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_513, (funcp)execute_517, (funcp)execute_521, (funcp)execute_523, (funcp)execute_538, (funcp)execute_546, (funcp)execute_555, (funcp)execute_562, (funcp)execute_567, (funcp)execute_571, (funcp)execute_576, (funcp)execute_580, (funcp)execute_636, (funcp)execute_640, (funcp)execute_660, (funcp)execute_704, (funcp)execute_708, (funcp)execute_712, (funcp)execute_717, (funcp)execute_736, (funcp)execute_740, (funcp)execute_903, (funcp)execute_910, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_42, (funcp)transaction_45, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_55, (funcp)transaction_58, (funcp)transaction_63, (funcp)transaction_145, (funcp)transaction_152, (funcp)transaction_159, (funcp)transaction_166, (funcp)transaction_173, (funcp)transaction_180, (funcp)transaction_187, (funcp)transaction_194, (funcp)transaction_201, (funcp)transaction_208, (funcp)transaction_215, (funcp)transaction_222, (funcp)transaction_229, (funcp)transaction_236, (funcp)transaction_243, (funcp)transaction_250, (funcp)transaction_257, (funcp)transaction_264, (funcp)transaction_271, (funcp)transaction_278, (funcp)transaction_285, (funcp)transaction_292, (funcp)transaction_299, (funcp)transaction_306, (funcp)transaction_313, (funcp)transaction_320, (funcp)transaction_327, (funcp)transaction_334, (funcp)transaction_341, (funcp)transaction_348, (funcp)transaction_355, (funcp)transaction_362, (funcp)transaction_369, (funcp)transaction_376, (funcp)transaction_412, (funcp)transaction_419, (funcp)transaction_426, (funcp)transaction_433, (funcp)transaction_440, (funcp)transaction_447, (funcp)transaction_454, (funcp)transaction_461, (funcp)transaction_468, (funcp)transaction_475, (funcp)transaction_482, (funcp)transaction_489, (funcp)transaction_496, (funcp)transaction_503, (funcp)transaction_510, (funcp)transaction_517, (funcp)transaction_524, (funcp)transaction_531, (funcp)transaction_538, (funcp)transaction_545, (funcp)transaction_552, (funcp)transaction_559, (funcp)transaction_566, (funcp)transaction_667, (funcp)transaction_674, (funcp)transaction_681, (funcp)transaction_688, (funcp)transaction_695, (funcp)transaction_702, (funcp)transaction_709, (funcp)transaction_716, (funcp)transaction_723, (funcp)transaction_730, (funcp)transaction_737, (funcp)transaction_744, (funcp)transaction_751, (funcp)transaction_758, (funcp)transaction_765, (funcp)transaction_772, (funcp)transaction_779, (funcp)transaction_786, (funcp)transaction_793, (funcp)transaction_800, (funcp)transaction_807, (funcp)transaction_814, (funcp)transaction_821, (funcp)transaction_828, (funcp)transaction_835, (funcp)transaction_842, (funcp)transaction_849, (funcp)transaction_856, (funcp)transaction_863, (funcp)transaction_870, (funcp)transaction_877, (funcp)transaction_884, (funcp)transaction_891, (funcp)transaction_898, (funcp)transaction_905, (funcp)transaction_912, (funcp)transaction_919, (funcp)transaction_926, (funcp)transaction_933, (funcp)transaction_940, (funcp)transaction_947, (funcp)transaction_954, (funcp)transaction_961, (funcp)transaction_968, (funcp)transaction_975, (funcp)transaction_982, (funcp)transaction_989, (funcp)transaction_996, (funcp)transaction_1003, (funcp)transaction_1010, (funcp)transaction_1017, (funcp)transaction_1024, (funcp)transaction_1031, (funcp)transaction_1038, (funcp)transaction_1045, (funcp)transaction_1052, (funcp)transaction_1059, (funcp)transaction_1066, (funcp)transaction_1073, (funcp)transaction_1080};
const int NumRelocateId= 197;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/fpga_design_wrapper_func_synth/xsim.reloc",  (void **)funcTab, 197);
	iki_vhdl_file_variable_register(dp + 219680);
	iki_vhdl_file_variable_register(dp + 219736);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/fpga_design_wrapper_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/fpga_design_wrapper_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/fpga_design_wrapper_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/fpga_design_wrapper_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/fpga_design_wrapper_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
