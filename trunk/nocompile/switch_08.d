// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 19

module dstress.nocompile.switch_08;

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
