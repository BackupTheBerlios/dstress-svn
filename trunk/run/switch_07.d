// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_07.d,v 1.1 2004/09/21 22:05:10 th Exp $

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
