// $HeadURL$
// $Date$
// $Author$

// only functions can be declared static

module dstress.nocompile.static_19;

int check(){
	static int x;
	return x;
}

int main(){
	check();
	return 0;
}
