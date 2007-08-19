// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_03;

int main(){
	string string=`\v`;
	if(2 != string.length){ assert(0); }
	if('\\' != string[0]){ assert(0); }
	if('v' != string[1]){ assert(0); }
	return 0;
}
