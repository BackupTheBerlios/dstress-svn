// override can only be applied to class functions
module dstress.nocompile.override_08;

override int check(){
	return 0;
}

int main(){
	return check();
}
