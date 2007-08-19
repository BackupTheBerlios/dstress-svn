// $HeadURL$
// $Date$
// $Author$

// only "" and "inout" are allowed as modifiers

// __DSTRESS_ELINE__ 13

module dstress.nocompile.foreach_18;

int main(){
	string x = "av";
	foreach(out char c; x){
	}
	return 0;
}
