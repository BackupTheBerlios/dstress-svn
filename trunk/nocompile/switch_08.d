
int main(){
	wchar[] test="eins";

	switch(test){
		case "null","drei":
			assert(0);
		case "vier":
			assert(0);
	}

default:
	return 0;
}
