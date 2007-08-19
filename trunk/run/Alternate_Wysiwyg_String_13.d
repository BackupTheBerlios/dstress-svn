// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_13;

int main(){
	string arr=`\u`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('u' != arr[1]){ assert(0); }
	return 0;
}
