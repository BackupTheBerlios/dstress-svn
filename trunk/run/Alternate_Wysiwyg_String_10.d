// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_10;

int main(){
	string arr=`\r`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('r' != arr[1]){ assert(0); }
	return 0;
}
