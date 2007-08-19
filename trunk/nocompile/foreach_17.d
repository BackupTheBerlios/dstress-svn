// $HeadURL$
// $Date$
// $Author$

// only "" and "inout" are allowed as modifiers

// __DSTRESS_ELINE__ 13

module dstress.nocompile.foreach_17;

int main(){
	string x = "ab";
	foreach(in char c; x){
	}
	return 0;
}
