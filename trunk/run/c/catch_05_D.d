// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99id2$fgj$1@digitaldaemon.com
// @desc@	foreach and throw/catch code generation

module dstress.run.c.catch_05_D;

int counter;

void dummy(){
	counter++;
}

int bb[char[]];

int main(){

	bb["zwei"] = 2;

	assert(counter==0);
 
	foreach(int i; bb){
		dummy();
	}

	assert(counter==1);

	bb["a"] = 1;

	foreach(int b; bb){
		try{
			throw new Error("foo");
		}catch(Error e){
			assert(e);
			assert(counter==1);
			return 0;
		}catch{
			assert(0);
		}
		assert(0);
	}

	assert(0);
}
