// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2004-11-04
// @uri@	news:cmdbq1$1a49$3@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2194

module dstress.compile.struct_16;

struct MyStruct{
	StructAlias* MyStruct(){
		return null;
	}
}
alias MyStruct StructAlias;
