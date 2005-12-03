// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-29
// @uri@	news:d4sr1u$505$2@digitaldaemon.com

module dstress.run.enum_20_A;

enum Enum : int {
	A = 3,
	B = 10,
	E = -5,
}

int main(){
	assert(Enum.init==Enum.A);
	assert(Enum.init==3);
	Enum e;
	assert(e==Enum.A);
	assert(e==3);
	return 0;
}

