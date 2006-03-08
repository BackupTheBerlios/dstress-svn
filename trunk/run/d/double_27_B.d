// $HeadURL$
// $Date$
// $Author$

// based on: gcc.c-torture/execute/ieee/930529-1.c

module dstress.run.d.double_27_B;

int main (){
	union D {
		double d;
		ubyte[8] c;
	};

	D d;
	d.d = 1.0/7.0;

	version(LittleEndian){
		if(
			d.c[0] == 0x92
			&& d.c[1] == 0x24
			&& d.c[2] == 0x49
			&& d.c[3] == 0x92
			&& d.c[4] == 0x24
			&& d.c[5] == 0x49
			&& d.c[6] == 0xc2
			&& d.c[7] == 0x3f
		){
			return 0;
		}
	}else version(BigEndian){
		if(
			d.c[7] == 0x92
			&& d.c[6] == 0x24
			&& d.c[5] == 0x49
			&& d.c[4] == 0x92
			&& d.c[3] == 0x24
			&& d.c[2] == 0x49
			&& d.c[1] == 0xc2
			&& d.c[0] == 0x3f
		){
			return 0;
		}
	}else{
		static assert(0);
	}

	assert(0);
}
