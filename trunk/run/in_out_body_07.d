// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-02-06
// @uri@	news:cu5eci$1asg$1@digitaldaemon.com

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
