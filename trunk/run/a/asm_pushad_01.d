// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pushad_01;

int main(){
	version(D_InlineAsm){
		static if(size_t.sizeof==4){
			uint a_A, a_B, a_C, a_D, a_BP, a_SP, a_SI, a_DI;
			uint b_A, b_B, b_C, b_D, b_BP, b_SP, b_SI, b_DI;
			uint c_A, c_B, c_C, c_D, c_BP, c_SP, c_SI, c_DI;
			uint x = 0x12_AB_CD_34;
			asm{
				mov a_A, EAX;
				mov a_B, EBX;
				mov a_C, ECX;
				mov a_D, EDX;
				mov a_BP, EBP;
				mov a_SP, ESP;
				mov a_SI, ESI;
				mov a_DI, EDI;
				pushad;
				mov EAX, x;
				mov EBX, x;
				mov ECX, x;
				mov EDX, x;
				mov ESI, x;
				mov EDI, x;
				mov b_A, EAX;
				mov b_B, EBX;
				mov b_C, ECX;
				mov b_D, EDX;
				mov b_BP, EBP;
				mov b_SP, ESP;
				mov b_SI, ESI;
				mov b_DI, EDI;
				popad;
				mov c_A, EAX;
				mov c_B, EBX;
				mov c_C, ECX;
				mov c_D, EDX;
				mov c_BP, EBP;
				mov c_SP, ESP;
				mov c_SI, ESI;
				mov c_DI, EDI;			
			}
			
			assert(a_A == c_A);
			assert(b_A == x);
			
			assert(a_B == c_B);
			assert(b_B == x);
			
			assert(a_C == c_C);
			assert(b_C == x);
			
			assert(a_D == c_D);
			assert(b_D == x);
			
			assert(a_SI == c_SI);
			assert(b_SI == x);
						
			assert(a_SI == c_SI);
			assert(b_SI == x);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
