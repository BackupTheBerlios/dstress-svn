
// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-08-10
// @uri@	news://cfa5h3$1hf0$1@digitaldaemon.com

struct MyStruct{
	int i;
}

const int a = 0;
const MyStruct b = { a };
const MyStruct c = b;

int main(){
	return 0;
}

