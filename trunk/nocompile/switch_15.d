// $HeadURL$
// $Date$
// $Author$

// according to dmd-0.106's statement.html#switch
// only integers, char[] and wchar[] are allowed

// __DSTRESS_ELINE__  14

module dstress.nocompile.switch_15;

int main(){
	float f=0;
	switch(f){
		case 0.0:{
			return 0;
		}default:{
			assert(0);
		}
	}
		
}
