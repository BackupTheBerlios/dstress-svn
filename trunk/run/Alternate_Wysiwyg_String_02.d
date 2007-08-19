// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_02;

int main(){
	string string=`\'`;
	if(2 != string.length){ assert(0); }
	if('\\' != string[0]){ assert(0); }
	if('\'' != string[1]){ assert(0); }
	return 0;
}
