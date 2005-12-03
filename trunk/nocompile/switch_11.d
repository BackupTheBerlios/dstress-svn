// $HeadURL$
// $Date$
// $Author$

// multiple equal keys in a switch-case 

// __DSTRESS_ELINE__ 16

module dstress.nocompile.switch_11;

int main(){
	int i;
	switch(i){
		case 0:{
			assert(0);
		}case 0:{
			assert(1);
		}default:{
			return -1; // dummy
		}
	}
		
}
