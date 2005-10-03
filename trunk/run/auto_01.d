// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/1821

module dstress.run.auto_01;


auto class AutoClass{
	this(){
		throw new Exception("error msg");
	}
	~this(){
		assert(0);
	}
}

int main(){
	try{
		auto AutoClass ac = new AutoClass();
	}catch{
		return 0;
	}
	assert(0);
}
