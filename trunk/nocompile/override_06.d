// override can only be applied to class functions
module dstress.nocompile.override_06;

struct MyStruct{
	override int x(){
		return 0;
	}
}

int main(){
	MyStruct s;
	return s.x();
}
