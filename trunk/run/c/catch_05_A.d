// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4383
// @desc@	foreach and throw/catch code generation

module dstress.run.c.catch_05_A;

void dummy(){
}

int bb[char[]];

int main(){

	foreach(char[] s, int i; bb){
		dummy();
	}

	bb["a"] = 1;

	foreach(int b; bb){
		try{
			throw new Error("foo");
		}catch(Error e){
			assert(e);
			return 0;
		}catch{
			assert(0);
		}
		assert(0);
	}

	assert(0);
}
