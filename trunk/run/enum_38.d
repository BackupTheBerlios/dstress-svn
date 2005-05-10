// $HeadURL: http://dstress.kuehne.cn/run/enum_38.d $
// $Date: 2005-05-03 22:02:05 +0200 (Di, 03 Mai 2005) $
// $Author: thomask $

module dstress.run.enum_38;

enum E{
	A = 1
}

const E e;

enum Enum : E {
	B = e
}

int main(){
	assert(Enum.B==E.A);
	return 0;
}
