// $HeadURL$
// $Date$
// $Author$

module dstress.run.comment_12;

int main(){
	char[] string="/++/";
	assert(string.length==4);
	assert(string[0]=='/');
	assert(string[1]=='+');
	assert(string[2]=='+');
	assert(string[3]=='/');
	return 0;
}
