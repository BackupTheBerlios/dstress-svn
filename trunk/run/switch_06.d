
int main(){
	char[] test="eins";

	switch(test){
		case "null","drei":
			assert(0);
		case "vier":
			assert(0);
		default:
			assert(1);
	}

	return 0;
}
