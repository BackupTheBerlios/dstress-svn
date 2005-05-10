// $HeadURL: http://dstress.kuehne.cn/nocompile/enum_37.d $
// $Date: 2005-05-03 22:02:05 +0200 (Di, 03 Mai 2005) $
// $Author: thomask $

// __DSTRESS_ELINE__ 16

module dstress.nocompile.enum_37;

enum E{
	A = 1
}

E e;

enum Enum : E {
	B = e
}
