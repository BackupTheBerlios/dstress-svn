// $HeadURL$
// $Date$
// $Author$

// @author@	Arcane Jill <Arcane_member@pathlink.com
// @date@	2004-08-23

module dstress.nocompile.precondition_01;

int test(int x)
in{
	assert(x==2);	
};

int main(){
	int i =test(2);
	return 0;
}
