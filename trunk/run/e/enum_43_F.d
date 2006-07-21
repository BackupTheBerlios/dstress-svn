// $HeadURL$
// $Date$
// $Author$

// @author@	Tim Keating <Tim_member@pathlink.com>
// @date@	2006-01-27
// @uri@	news:drcl3a$jh2$1@digitaldaemon.com

module dstress.run.e.enum_43_F;

int main(){
	const int[E.min] array;

	static if(E.min == 1){
		static if(array.length == 1){
			return 0;
		}
	}
}

enum E{
	A = 1,
	B,
	C
}
