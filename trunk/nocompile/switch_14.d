// $HeadURL$
// $Date$
// $Author$

// according to dmd-0.106's statement.html#switch
// only integers, char[] and wchar[] are allowed

module dstress.nocompile.switch_14;

int main(){
	dchar[] array = "123";
	switch(array){
		case "123":{
			return 0;
		}default:{
			assert(0);
		}
	}
		
}
