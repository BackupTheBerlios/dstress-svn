
// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-09-06

alias int MyInt;

int main(){
	MyInt test(char[] c=""){
		return 2;
	}
	assert(test("abc")==2);
	return 0;
}
