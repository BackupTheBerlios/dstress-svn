// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_15;

int main(){
	string arr=`
`;
	if(1 != arr.length){ assert(0); }
	if('\n' != arr[0]){ assert(0); }
	return 0;
}
