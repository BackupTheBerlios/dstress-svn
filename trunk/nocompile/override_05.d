// override can only be applied to class functions
module dstress.nocompile.override_05;

struct MyStruct{
	override int x;
}

int main(){
	MyStruct s;
	return s.x;
}
