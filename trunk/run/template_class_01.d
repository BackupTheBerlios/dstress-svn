// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/template_class_01.d,v 1.1 2004/09/23 05:12:38 th Exp $

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
