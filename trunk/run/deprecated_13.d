// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -d

module dstress.run.deprecated_13;

int a = 2;
deprecated alias a b;

int main(){
	return b-2;
}
