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
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_31(char*, char *);
extern void execute_35(char*, char *);
extern void execute_40(char*, char *);
extern void execute_45(char*, char *);
extern void execute_49(char*, char *);
extern void execute_51(char*, char *);
extern void execute_56(char*, char *);
extern void execute_59(char*, char *);
extern void execute_63(char*, char *);
extern void execute_67(char*, char *);
extern void execute_70(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_78(char*, char *);
extern void execute_81(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_126(char*, char *);
extern void execute_130(char*, char *);
extern void execute_135(char*, char *);
extern void execute_142(char*, char *);
extern void execute_146(char*, char *);
extern void execute_149(char*, char *);
extern void execute_154(char*, char *);
extern void execute_157(char*, char *);
extern void execute_203(char*, char *);
extern void execute_212(char*, char *);
extern void execute_222(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_237(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_265(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[69] = {(funcp)execute_15, (funcp)execute_16, (funcp)execute_31, (funcp)execute_35, (funcp)execute_40, (funcp)execute_45, (funcp)execute_49, (funcp)execute_51, (funcp)execute_56, (funcp)execute_59, (funcp)execute_63, (funcp)execute_67, (funcp)execute_70, (funcp)execute_73, (funcp)execute_75, (funcp)execute_78, (funcp)execute_81, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_122, (funcp)execute_123, (funcp)execute_126, (funcp)execute_130, (funcp)execute_135, (funcp)execute_142, (funcp)execute_146, (funcp)execute_149, (funcp)execute_154, (funcp)execute_157, (funcp)execute_203, (funcp)execute_212, (funcp)execute_222, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_71, (funcp)transaction_132, (funcp)transaction_139, (funcp)transaction_146, (funcp)transaction_153, (funcp)transaction_160, (funcp)transaction_167, (funcp)transaction_174, (funcp)transaction_181, (funcp)transaction_188, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_209, (funcp)transaction_216, (funcp)transaction_223, (funcp)transaction_230, (funcp)transaction_237, (funcp)transaction_244, (funcp)transaction_251, (funcp)transaction_258, (funcp)transaction_265, (funcp)transaction_272, (funcp)transaction_279, (funcp)transaction_286, (funcp)transaction_293, (funcp)transaction_300, (funcp)transaction_307, (funcp)transaction_314, (funcp)transaction_321, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_342, (funcp)transaction_349, (funcp)transaction_356, (funcp)transaction_363};
const int NumRelocateId= 69;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/central_interface_func_impl/xsim.reloc",  (void **)funcTab, 69);
	iki_vhdl_file_variable_register(dp + 74440);
	iki_vhdl_file_variable_register(dp + 74496);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/central_interface_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/central_interface_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/central_interface_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/central_interface_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/central_interface_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
