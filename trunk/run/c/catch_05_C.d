// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99id2$fgj$1@digitaldaemon.com
// @desc@	foreach and throw/catch code generation

module dstress.run.c.catch_05_C;

int counter;

void dummy(){
	counter++;
}

int bb[char[]];

int main(){

	bb["zwei"] = 2;

	if(counter != 0){
		assert(0);
	}

	foreach(char[] s, int i; bb){
		dummy();
	}

	if(counter != 1){
		assert(0);
	}

	bb["a"] = 1;

	foreach(int b; bb){
		try{
			throw new Error("foo");
		}catch(Error e){
			if(!e){
				assert(0);
			}
			if(counter != 1){
				assert(0);
			}
			return 0;
		}catch{
			assert(0);
		}
		assert(0);
	}

	assert(0);
}
