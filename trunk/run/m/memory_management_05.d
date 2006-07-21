// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-03-24
// @uri@	news:bug-72-3@http.d.puremagic.com/bugzilla/

module dstress.run.m.memory_management_05;

int main(){
	char[] dummy;
	dummy = "abc".dup;
	for(size_t a=0; a < 200; a++){
		char[] tmp = new char[a % 80];
		for(size_t b=0; b < a % 10; b++){
			dummy = dummy[0 .. $ % 33] ~ tmp[0 .. $ % 11] ~ dummy[ $ % 33 .. $];
		}
	}

	if(dummy.length != 4189){
		assert(0);
	}

	foreach(char c; dummy){
		if(c != c.init){
			assert(0);
		}
	}

	return dummy.length / 4190;
}

