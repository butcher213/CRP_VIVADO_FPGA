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
extern void execute_22(char*, char *);
extern void execute_26(char*, char *);
extern void execute_30(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_57(char*, char *);
extern void execute_59(char*, char *);
extern void execute_66(char*, char *);
extern void execute_68(char*, char *);
extern void execute_72(char*, char *);
extern void execute_75(char*, char *);
extern void execute_79(char*, char *);
extern void execute_127(char*, char *);
extern void execute_146(char*, char *);
extern void execute_188(char*, char *);
extern void execute_195(char*, char *);
extern void execute_199(char*, char *);
extern void execute_204(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_213(char*, char *);
extern void execute_226(char*, char *);
extern void execute_231(char*, char *);
extern void execute_242(char*, char *);
extern void execute_261(char*, char *);
extern void execute_546(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_283(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_290(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_332(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_402(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_479(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_500(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_507(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[94] = {(funcp)execute_22, (funcp)execute_26, (funcp)execute_30, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_44, (funcp)execute_45, (funcp)execute_47, (funcp)execute_48, (funcp)execute_57, (funcp)execute_59, (funcp)execute_66, (funcp)execute_68, (funcp)execute_72, (funcp)execute_75, (funcp)execute_79, (funcp)execute_127, (funcp)execute_146, (funcp)execute_188, (funcp)execute_195, (funcp)execute_199, (funcp)execute_204, (funcp)execute_207, (funcp)execute_210, (funcp)execute_213, (funcp)execute_226, (funcp)execute_231, (funcp)execute_242, (funcp)execute_261, (funcp)execute_546, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_72, (funcp)transaction_122, (funcp)transaction_129, (funcp)transaction_136, (funcp)transaction_143, (funcp)transaction_150, (funcp)transaction_157, (funcp)transaction_164, (funcp)transaction_171, (funcp)transaction_178, (funcp)transaction_185, (funcp)transaction_192, (funcp)transaction_199, (funcp)transaction_206, (funcp)transaction_213, (funcp)transaction_220, (funcp)transaction_227, (funcp)transaction_234, (funcp)transaction_241, (funcp)transaction_248, (funcp)transaction_255, (funcp)transaction_262, (funcp)transaction_269, (funcp)transaction_276, (funcp)transaction_283, (funcp)transaction_290, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_325, (funcp)transaction_332, (funcp)transaction_339, (funcp)transaction_346, (funcp)transaction_353, (funcp)transaction_360, (funcp)transaction_367, (funcp)transaction_374, (funcp)transaction_381, (funcp)transaction_388, (funcp)transaction_395, (funcp)transaction_402, (funcp)transaction_409, (funcp)transaction_416, (funcp)transaction_423, (funcp)transaction_430, (funcp)transaction_437, (funcp)transaction_444, (funcp)transaction_451, (funcp)transaction_458, (funcp)transaction_465, (funcp)transaction_472, (funcp)transaction_479, (funcp)transaction_486, (funcp)transaction_493, (funcp)transaction_500, (funcp)transaction_507, (funcp)transaction_514, (funcp)transaction_521, (funcp)transaction_528, (funcp)transaction_535, (funcp)transaction_542};
const int NumRelocateId= 94;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/uart_tx_func_synth/xsim.reloc",  (void **)funcTab, 94);
	iki_vhdl_file_variable_register(dp + 112848);
	iki_vhdl_file_variable_register(dp + 112904);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/uart_tx_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/uart_tx_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/uart_tx_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/uart_tx_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/uart_tx_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
