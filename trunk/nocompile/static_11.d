// static can only be applied to members of a type (class, struct, union)

module dstress.nocompile.static_11;

static int status;

int main(){
	int check = status;
	return 0;
}
