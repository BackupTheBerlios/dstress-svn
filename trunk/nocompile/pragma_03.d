// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.pragma_03;

int main(){
	char * check = "compiling pragma\n";
	pragma(msg, check);
	return 0;
}
