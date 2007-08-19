// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_06;

int main(){
	string arr=`\a`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('a' != arr[1]){ assert(0); }
	return 0;
}
