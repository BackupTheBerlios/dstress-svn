module dstress.run.static_13;

int check(){
	static int x;
	return x;
}

int main(){
	check();
	return 0;
}
