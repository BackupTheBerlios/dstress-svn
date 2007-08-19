// $HeadURL$
// $Date$
// $Author$

module dstress.run.comment_13;

int main(){
	string x="
//
";
	assert(x.length==4);
	assert(x[0]=='\n');
	assert(x[1]=='/');
	assert(x[2]=='/');
	assert(x[3]=='\n');
	return 0;
}
