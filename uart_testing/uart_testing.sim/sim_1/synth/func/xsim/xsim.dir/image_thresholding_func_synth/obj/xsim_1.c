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
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_22(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_224(char*, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_584(char*, char *);
extern void execute_598(char*, char *);
extern void execute_604(char*, char *);
extern void execute_606(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_331(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_338(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_365(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_372(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_399(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_427(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_455(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_476(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_483(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_490(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_553(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_581(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_588(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_595(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_602(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_609(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_616(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_637(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_665(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[172] = {(funcp)execute_16, (funcp)execute_17, (funcp)execute_22, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_224, (funcp)execute_304, (funcp)execute_305, (funcp)execute_584, (funcp)execute_598, (funcp)execute_604, (funcp)execute_606, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_134, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_158, (funcp)transaction_161, (funcp)transaction_163, (funcp)transaction_165, (funcp)transaction_167, (funcp)transaction_169, (funcp)transaction_170, (funcp)transaction_172, (funcp)transaction_174, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_182, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_209, (funcp)transaction_222, (funcp)transaction_229, (funcp)transaction_236, (funcp)transaction_243, (funcp)transaction_256, (funcp)transaction_263, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_284, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_331, (funcp)transaction_338, (funcp)transaction_345, (funcp)transaction_358, (funcp)transaction_365, (funcp)transaction_372, (funcp)transaction_379, (funcp)transaction_392, (funcp)transaction_399, (funcp)transaction_406, (funcp)transaction_413, (funcp)transaction_420, (funcp)transaction_427, (funcp)transaction_434, (funcp)transaction_441, (funcp)transaction_448, (funcp)transaction_455, (funcp)transaction_462, (funcp)transaction_469, (funcp)transaction_476, (funcp)transaction_483, (funcp)transaction_490, (funcp)transaction_497, (funcp)transaction_504, (funcp)transaction_511, (funcp)transaction_518, (funcp)transaction_525, (funcp)transaction_532, (funcp)transaction_539, (funcp)transaction_546, (funcp)transaction_553, (funcp)transaction_560, (funcp)transaction_567, (funcp)transaction_574, (funcp)transaction_581, (funcp)transaction_588, (funcp)transaction_595, (funcp)transaction_602, (funcp)transaction_609, (funcp)transaction_616, (funcp)transaction_623, (funcp)transaction_630, (funcp)transaction_637, (funcp)transaction_644, (funcp)transaction_651, (funcp)transaction_658, (funcp)transaction_665, (funcp)transaction_672, (funcp)transaction_679};
const int NumRelocateId= 172;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/image_thresholding_func_synth/xsim.reloc",  (void **)funcTab, 172);
	iki_vhdl_file_variable_register(dp + 149992);
	iki_vhdl_file_variable_register(dp + 150048);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/image_thresholding_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/image_thresholding_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/image_thresholding_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/image_thresholding_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/image_thresholding_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
