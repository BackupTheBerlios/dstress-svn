// $HeadURL$
// $Date$
// $Author$

// duplicate case "123" in switch statement

module dstress.nocompile.switch_09;

const char[]  c = "123";

int main(){
	char[] array = "123";
	switch(array){
		case "123":{
			assert(0);
			break;
		}case c:{
			assert(1);
			break;
		}default:{
			return -1; // dummy
		}
	}
		
}
