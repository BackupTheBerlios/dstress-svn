int main(){
	char[] string="
//
";
	assert(string.length==4);
	assert(string[0]=='\n');
	assert(string[1]=='/');
	assert(string[2]=='/');
	assert(string[3]=='\n');
	return 0;
}
