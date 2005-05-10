// $HeadURL: http://dstress.kuehne.cn/run/enum_25.d $
// $Date: 2005-05-03 21:30:54 +0200 (Di, 03 Mai 2005) $
// $Author: thomask $

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-29
// @uri@	news:d4sr1u$505$2@digitaldaemon.com

module dstress.run.enum_25;

enum Enum : ulong {
	A = 3,
	B = 10,
	C = 1
}

int main(){
	assert(Enum.init==Enum.A);
	assert(Enum.init==3);
	Enum e;
	assert(e==Enum.A);
	assert(e==3);
	return 0;
}

