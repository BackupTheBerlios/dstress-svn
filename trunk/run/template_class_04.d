// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/template_class_04.d,v 1.1 2004/09/23 06:16:18 th Exp $

// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2004-09-23

class Parent(){
}

class Child : Parent!(){
}

class Parent(Type){
}

int main(){
	Child c = new Child();
	return 0;
}
