// static can only be applied to members of a type (class, struct, union)

module dstress.nocompile.static_07;

static int test(){
	return 1;
}

int main(){
	test();
	return 0;
}
