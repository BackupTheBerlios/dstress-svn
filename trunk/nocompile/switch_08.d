// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/switch_08.d,v 1.1 2004/09/21 22:05:08 th Exp $

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
