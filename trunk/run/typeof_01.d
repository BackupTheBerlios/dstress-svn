// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeof_01;

int main(){
	int a = 1;
	typeof(a) b;
	b = a;
	return --b;
}
