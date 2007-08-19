// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_16;

int main(){
	string arr=`"`;
	if(1 != arr.length){ assert(0); }
	if('"' != arr[0]){ assert(0); }
	return 0;
}
