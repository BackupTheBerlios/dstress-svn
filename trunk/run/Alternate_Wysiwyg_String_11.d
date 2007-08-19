// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_11;

int main(){
	string arr=`\t`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('t' != arr[1]){ assert(0); }
	return 0;
}
