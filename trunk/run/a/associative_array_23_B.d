// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.associative_array_23_B;

int main(){
	auto arr = [4:"vier", 0:"null", 2:"zwei"];

	if(3 != arr.length){
		assert(0);
	}
	
	char[][] master_e = ["vier", "null", "zwei"];
	int[] master_i = [4, 0, 2];

	foreach(index, element; arr){
		bool found = false;
		foreach(pos, i; master_i){
			if(index == i && element == master_e[pos]){
				master_i = master_i[0 .. pos] ~ master_i[pos+1 .. $];
				master_e = master_e[0 .. pos] ~ master_e[pos+1 .. $];
				found = true;
				break;
			}
		}
		if(!found){
			assert(0);
		}
	}
	if(master_i.length){
		assert(0);
	}
	return 0;
}
