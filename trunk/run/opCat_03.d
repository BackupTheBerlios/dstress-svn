// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCat_03;

int main(){
	wchar[] a="abc";
	wchar[] b="efg";
	wchar[] c=a~"d"~b;
	return 0;
}
