// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-04
// @uri@	news:cmdbq1$1a49$3@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2194

module dstress.compile.struct_16;

struct MyStruct{
	StructAlias* MyStruct(){
		return null;
	}
}
alias MyStruct StructAlias;
