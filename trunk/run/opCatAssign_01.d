// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCatAssign_01;

int main(){
	char[] string;
	string ~= "abc";
	assert(string.length==3);
	return 0;
}
