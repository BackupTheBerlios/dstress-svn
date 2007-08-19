// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_14;

int main(){
	string arr=`\U`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('U' != arr[1]){ assert(0); }
	return 0;
}
