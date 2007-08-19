// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCatAssign_01;

int main(){
	string x;
	x ~= "abc";
	assert(x.length==3);
	return 0;
}
