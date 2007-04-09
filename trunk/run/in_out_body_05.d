// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-02-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2880

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_05;

void test()
in{
	assert(0);
}
body{
}

int main(){
	try{
		test();
	}catch(InException ie){
		return 0;
	}
	assert(0);
}
