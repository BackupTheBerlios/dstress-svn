// $HeadURL$
// $Date$
// $Author$

// index has to be int / uint 

// __DSTRESS_ELINE__ 13

module dstress.nocompile.foreach_20;

int main(){
	string x = "ab";
	foreach(dchar index, char c; x){
	}
	return 0;
}
