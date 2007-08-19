// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_07;

int main(){
	string arr=`\b`;
	if(2 != arr.length){ assert(0); }
	if('\\' != arr[0]){ assert(0); }
	if('b' != arr[1]){ assert(0); }
	return 0;
}
