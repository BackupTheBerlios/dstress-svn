// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.pragma_04;

int main(){
	char [] check = "compiling pragma";
	pragma(msg, check);
	return 0;
}
