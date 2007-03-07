// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setpe_01;

int main(){
	version(D_InlineAsm){
		ubyte a;

		a = a.max;

		asm{
			mov EAX, 0;
			inc EAX;
			setpe a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 1;
			inc EAX;
			setpe a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 2;
			inc EAX;
			setpe a;
		}

		assert(a == 1);

		a = a.max;

		asm{
			mov EAX, 3;
			inc EAX;
			setpe a;
		}

		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}