// $HeadURL$
// $Date$
// $Author$

// @author@	Tim Keating <Tim_member@pathlink.com>
// @date@	2006-01-27
// @uri@	news:drcl3a$jh2$1@digitaldaemon.com

module dstress.run.e.enum_43_H;

const int[E.max] array;

enum E{
	A = 1,
	B,
	C
}

int main(){	
	static if(E.max == 3){
		static if(array.length == 3){
			return 0;
		}
	}
}

