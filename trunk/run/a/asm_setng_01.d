// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setng_01;

int main(){
	version(D_InlineAsm){
		ubyte a;

		a = a.max;

		asm{
			mov EAX, 3;
			cmp EAX, -4;
			setng a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, -4;
			cmp EAX, 3;
			setng a;
		}

		assert(a == 1);

		a = a.max;

		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setng a;
		}

		assert(a == 1);

		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}