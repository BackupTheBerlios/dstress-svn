module dstress.run.rehash_01;

int main(){
	int[char[]] array;
	array["eins"]=1;
	array["zwei"]=2;
	array["drei"]=3;

	assert(array.length==3);
	
	array.rehash;

	char[][] key = array.keys;
	assert(key.length==3);
	
	bool have[3];

	assert(!have[0]);
	assert(!have[1]);
	assert(!have[2]);

	foreach(char[] value; key){
		switch(value){
			case "eins":{
				have[0]=true;
				break;
			}case "zwei":{
				have[1]=true;
				break;
			}case "drei":{
				have[2]=true;
				break;
			}default:{
				assert(0);
			}
		}
	}	

	assert(have[0]);
	assert(have[1]);
	assert(have[2]);

	return 0;
}
