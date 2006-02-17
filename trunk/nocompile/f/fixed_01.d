// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 14

module dstress.nocompile.f.fixed_01;

void main(){
	int i = 3;

	fixed(int* ptr = i){
		(*ptr)++;
	}
}
