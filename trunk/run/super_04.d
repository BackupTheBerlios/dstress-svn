// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/super_04.d,v 1.1 2004/09/23 06:08:42 th Exp $

// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-23

template MyTemplate(Type){
	this(){
		super.test();
	}
}

class Parent{
	int test(){
		return 2;
	}
}

class Child : Parent{
	mixin MyTemplate!(Child);
}

int main(){
	Child c = new Child();
	return 0;
}
