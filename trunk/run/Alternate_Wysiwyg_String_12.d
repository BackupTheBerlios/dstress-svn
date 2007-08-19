// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_12;

int main(){
	string arr=`\x`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('x' != arr[1]){ assert(0); }
	return 0;
}
