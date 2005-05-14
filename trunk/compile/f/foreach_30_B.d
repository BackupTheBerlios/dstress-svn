// $HeadURL$
// $Date$
// $Author$

// @author@	pragma <pragma_member@pathlink.com>
// @date@	2005-05-12
// @uri@	news:d6010n$i01$1@digitaldaemon.com

module dstress.compile.f.foreach_30_B;

class Collection{
	int opApply(int delegate(inout int) dg){
		return 0;
	}
}

bool test(){
	Collection a,b;
	
	foreach(int x; a){
		foreach(int y; b){
			goto label;
		}
	}
	
	return true;

label:
	return false;
}
