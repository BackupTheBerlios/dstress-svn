// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-02-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2880

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_07;

void test()
out{
	assert(0);
}
body{
}

int main(){
	try{
		test();
	}catch{
		return 0;
	}
	assert(0);
}
