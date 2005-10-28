// $HeadURL: svn://127.0.0.1/run/a/asm_fld1_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fldcw_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		ushort controll;
		
		float a = 2.8;
		float b = 2.1;
		
		short i1_a, i1_b;
		short i2_a, i2_b;
		short i3_a, i3_b;
		
		asm{
			finit;
			fstcw controll;
		}
		
		controll &= 0b1111_00_1111111111;
		controll |= 0b0000_01_0000000000;
		
		asm{
			fldcw controll;
			fld a;
			fistp i1_a;
			
			fld b;
			fistp i1_b;
		}
		
		controll &= 0b1111_00_1111111111;
		controll |= 0b0000_10_0000000000;
		
		asm{
			fldcw controll;
			fld a;
			fistp i2_a;
			
			fld b;
			fistp i2_b;
		}
		
		controll &= 0b1111_00_1111111111;
		
		asm{
			fldcw controll;
			fld a;
			fistp i3_a;
			
			fld b;
			fistp i3_b;
		}
		
		assert(i1_a == 2);
		assert(i1_b == 2);
		
		assert(i2_a == 3);
		assert(i2_b == 3);
		
		assert(i3_a == 3);
		assert(i3_b == 2);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}