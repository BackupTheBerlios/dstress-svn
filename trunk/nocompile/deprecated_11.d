// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.deprecated_11;

int a = 2;
deprecated alias a b;

int main(){
	return b;
}
