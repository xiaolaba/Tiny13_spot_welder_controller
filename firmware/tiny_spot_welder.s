	.file	"main.c"
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C11 (AVR_8_bit_GNU_Toolchain_3.6.2_1778) version 5.4.0 (avr)
 ; 	compiled by GNU C version 4.7.4, GMP version 5.0.2, MPFR version 3.0.0, MPC version 0.9
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr25/tiny-stack
 ;  -iprefix c:\avr8-gnu-toolchain-win32_x86\bin\../lib/gcc/avr/5.4.0/
 ;  -D__AVR_ATtiny13__ -D__AVR_DEVICE_NAME__=attiny13 -D F_CPU=9600000
 ;  main.c -mn-flash=1 -mno-skip-bug -mmcu=avr25 -msp8
 ;  -auxbase-strip firmware\tiny_spot_welder.s -gdwarf-2 -g0 -Os -Wall
 ;  -fverbose-asm
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -falign-functions -falign-jumps -falign-labels -falign-loops
 ;  -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type
 ;  -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 ;  -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 ;  -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 ;  -fchkp-use-wrappers -fcombine-stack-adjustments -fcommon -fcompare-elim
 ;  -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
 ;  -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
 ;  -fearly-inlining -feliminate-unused-debug-types
 ;  -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 ;  -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
 ;  -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
 ;  -findirect-inlining -finline -finline-atomics -finline-functions
 ;  -finline-functions-called-once -finline-small-functions -fipa-cp
 ;  -fipa-cp-alignment -fipa-icf -fipa-icf-functions -fipa-icf-variables
 ;  -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
 ;  -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
 ;  -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 ;  -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
 ;  -fmath-errno -fmerge-constants -fmerge-debug-strings
 ;  -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 ;  -fpartial-inlining -fpeephole -fpeephole2 -fprefetch-loop-arrays
 ;  -freg-struct-return -freorder-blocks -freorder-functions
 ;  -frerun-cse-after-loop -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 ;  -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt -fstdarg-opt
 ;  -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
 ;  -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
 ;  -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
 ;  -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-dce
 ;  -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 ;  -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 ;  -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
 ;  -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 ;  -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
 ;  -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss -msp8

	.text
.global	io_setup
	.type	io_setup, @function
io_setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x17,0	 ; ,
	sbi 0x18,0	 ; ,
	sbi 0x17,1	 ; ,
	ret
	.size	io_setup, .-io_setup
.global	adc_setup
	.type	adc_setup, @function
adc_setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x7,0	 ; ,
	sbi 0x7,5	 ; ,
	in r24,0x6	 ;  D.1815, MEM[(volatile uint8_t *)38B]
	ori r24,lo8(-125)	 ;  D.1815,
	out 0x6,r24	 ;  MEM[(volatile uint8_t *)38B], D.1815
	ret
	.size	adc_setup, .-adc_setup
.global	adc_read
	.type	adc_read, @function
adc_read:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x6,6	 ; ,
.L4:
	sbic 0x6,6	 ; ,
	rjmp .L4	 ; 
	in r24,0x5	 ;  D.1819, MEM[(volatile uint8_t *)37B]
	ret
	.size	adc_read, .-adc_read
.global	read_btn
	.type	read_btn, @function
read_btn:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbis 0x16,0	 ; ,
	rjmp .L8	 ; 
	cbi 0x18,1	 ; ,
	ldi r18,lo8(1919999)	 ; ,
	ldi r24,hi8(1919999)	 ; ,
	ldi r25,hlo8(1919999)	 ; ,
1:	subi r18,1	 ; 
	sbci r24,0	 ; 
	sbci r25,0	 ; 
	brne 1b
	rjmp .
	nop
.L8:
	sbi 0x18,1	 ; ,
	ret
	.size	read_btn, .-read_btn
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall io_setup	 ; 
	rcall adc_setup	 ; 
.L11:
	rcall adc_read	 ; 
	rcall read_btn	 ; 
	rjmp .L11	 ; 
	.size	main, .-main
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
