
// @author@	berupon <yu@3dcg.ne.jp>
// @date@	2004-05-10

alias int MyInt;

class TemplateClass(T, T2 = MyInt){
}

alias TemplateClass!(int) MyClass;

int main(){
	MyClass m = new MyClass();
	return 0;
}
