// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/1821

module dstress.run.auto_03;

int status;

auto class AutoClass{
	~this(){
		assert(status==0);
		status--;
		throw new Exception("error msg");
	}
}

void test(){
	assert(status==0);
	auto AutoClass ac = new AutoClass();
}

int main(){
	try{
		test();
	}catch{
	}
	
	if(status==-1){
		return 0;
	}
	assert(0);
}
