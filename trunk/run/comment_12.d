// $HeadURL$
// $Date$
// $Author$

module dstress.run.comment_12;

int main(){
	string x="/++/";
	assert(x.length==4);
	assert(x[0]=='/');
	assert(x[1]=='+');
	assert(x[2]=='+');
	assert(x[3]=='/');
	return 0;
}
