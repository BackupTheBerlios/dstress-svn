
// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2004-09-23

class Parent(Type){
}

class Parent(){
}

class Child : Parent!(){
}

int main(){
	Child c = new Child();
	return 0;
}
