// $HeadURL$
// $Date$
// $Author$

// only "" and "inout" are allowed as modifiers

// __DSTRESS_ELINE__ 13

module dstress.nocompile.foreach_17;

int main(){
	char[] string;
	foreach(in char c; string){	
	}
	return 0;
}
