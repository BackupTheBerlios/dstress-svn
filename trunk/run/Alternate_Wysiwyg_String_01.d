// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_01;

int main(){
	string string=`hello`;
	if(5 != string.length){ assert(0); }
	if('h' != string[0]){ assert(0); }
	if('e' != string[1]){ assert(0); }
	if('l' != string[2]){ assert(0); }
	if('l' != string[3]){ assert(0); }
	if('o' != string[4]){ assert(0); }
	return 0;
}
