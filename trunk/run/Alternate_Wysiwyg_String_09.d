// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_09;

int main(){
	string arr=`\n`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('n' != arr[1]){ assert(0); }
	return 0;
}
