
struct MyStruct{
	override int x(){
		return 0;
	}
}

int main(){
	MyStruct s;
	return s.x();
}
