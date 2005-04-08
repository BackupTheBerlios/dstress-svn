// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-04-08
// @uri@	news:d36gbn$31ic$1@digitaldaemon.com

module dstress.run.bug_tocsym_217_02;

class A{
}

int main(){
	auto A a = new A();

	try{
	}catch(Exception e){ 
		try{
			assert(e);
		}catch{
		}
	}
	
	return 0;
}


