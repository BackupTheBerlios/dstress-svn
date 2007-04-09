// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4383
// @desc@	foreach and throw/catch code generation

module dstress.run.c.catch_05_F;

int counter;

void dummy(...){
	counter++;
}

int bb[char[]];

int main(){

	assert(counter==0);

	foreach(int i; bb){
		dummy(i);
	}

	assert(counter==0);

	bb["a"] = 1;

	foreach(int b; bb){
		try{
			throw new Error("foo");
		}catch(Error e){
			assert(e);
			assert(counter==0);
			return 0;
		}catch{
			assert(0);
		}
		assert(0);
	}

	assert(0);
}
