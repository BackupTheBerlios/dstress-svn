// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_06.d,v 1.1 2004/09/21 22:05:10 th Exp $

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
