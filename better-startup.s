.section .vector_table, "x"
.global _Reset
_Reset:
	b Reset_Handler
	b . /* undef instr */
	b . /* SW Int */ 
	b . /* Prefetch Abort */
	b . /* Data Abort */ 
	b . /* Reserved */
	b . /* IRQ */
	b . /* FIQ */

.section .text
Reset_Handler: 
	ldr r2, str1
	b . 
	str1 : .word 0xDEADBEEF

