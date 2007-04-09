// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-15
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4996

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 30

module dstress.norun.o.opCat_16_B;

bool called;

void test(wchar[] w){
	assert(w.length==4);
	assert(w[0]=='b');
	assert(w[1]=='u');
	assert(w[2]=='g');
	assert(w[3]=='s');
	called = true;
}

void main(){
	wchar[] S = "bug"w;
	assert(!called);
	test(S ~ "s"w);
	assert(called);
	assert(0);
}
