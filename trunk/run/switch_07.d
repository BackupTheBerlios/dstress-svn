// $HeadURL$
// $Date$
// $Author$

module dstress.run.switch_07;

int main(){
	char[] test="eins";

	switch(test){
		case "null","drei":{
			assert(0);
			case "eins":{
				assert(1);
				break;
			}
			assert(0);
		}case "vier":{
			assert(0);
		}
	}

	return 0;
}
