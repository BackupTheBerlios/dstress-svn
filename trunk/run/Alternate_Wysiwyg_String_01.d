// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_01;

int main(){
	string x=`hello`;
	if(5 != x.length){ assert(0); }
	if('h' != x[0]){ assert(0); }
	if('e' != x[1]){ assert(0); }
	if('l' != x[2]){ assert(0); }
	if('l' != x[3]){ assert(0); }
	if('o' != x[4]){ assert(0); }
	return 0;
}
