// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_08;

int main(){
	string arr=`\f`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('f' != arr[1]){ assert(0); }
	return 0;
}
