// $HeadURL$
// $Date$
// $Author$

// index has to be int / uint 

// __DSTRESS_ELINE__ 13

module dstress.nocompile.foreach_19;

int main(){
	string x = "ab";
	foreach(byte index, char c; x){
	}
	return 0;
}
