// $HeadURL$
// $Date$
// $Author$

// onyl "" and "inout" are as modifiers allowed

module dstress.nocompile.foreach_18;

int main(){
	char[] string
	foreach(out char c; string){
		
	}
	return 0;
}
