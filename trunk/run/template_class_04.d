
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
