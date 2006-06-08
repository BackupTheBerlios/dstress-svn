// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setno_01;

int main(){
	version(D_InlineAsm){
		ubyte a;

		a = a.max;

		asm{
			mov EAX, 3;
			cmp EAX, -4;
			setno a;
		}

		assert(a == 1);

		a = a.max;

		asm{
			mov EAX, -4;
			cmp EAX, 3;
			setno a;
		}

		assert(a == 1);

		a = a.max;

		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setno a;
		}

		assert(a == 1);

		a = a.max;

		int i = int.min;

		asm{
			mov EAX, i;
			cmp EAX, 1;
			setno a;
		}

		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}