int main(){
	int[char[]] array;
	array["eins"]=1;
	array["zwei"]=2;
	array["drei"]=3;

	int[] data = array.values;
	assert(data.length==3);
	
	byte have[3];

	assert(have[0]==0);
	assert(have[1]==0);
	assert(have[2]==0);

	foreach(int value; data){
		have[value-1]++;
	}	

	assert(have[0]==1);
	assert(have[1]==1);
	assert(have[2]==1);

	return 0;
}
