// $HeadURL$
// $Date$
// $Author$

// @author@	berupon <yu@3dcg.ne.jp>
// @date@	2004-05-10

module dstress.run.template_class_02;

typedef int MyInt;

class TemplateClass(T, T2 = MyInt){
}

alias TemplateClass!(int) MyClass;

int main(){
	MyClass m = new MyClass();
	return 0;
}
