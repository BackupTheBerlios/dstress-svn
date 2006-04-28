// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-04-28
// @uri@	news:bug-118-3@http.d.puremagic.com/bugzilla/

module dstress.run.a.asm_movhlps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [3.0f, 4.0f, 5.0f, 6.0f];
		static float[4] B = [10.0f, 20.0f, 30.0f, 40.0f];
		float[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			movlhps XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != A[0]){
			assert(0);
		}

		if(c[1] != A[1]){
			assert(0);
		}
		
		if(c[2] != B[0]){
			assert(0);
		}

		if(c[3] != B[1]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
