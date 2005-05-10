// $HeadURL: http://dstress.kuehne.cn/nocompile/enum_36.d $
// $Date: 2005-05-03 22:02:05 +0200 (Di, 03 Mai 2005) $
// $Author: thomask $

// __DSTRESS_ELINE__ 14

module dstress.nocompile.enum_36;

struct S{
}

const S s;

enum Enum : S {
	A = s
}
