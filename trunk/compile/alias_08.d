// @author@	Oskar Linde <d98-oliRE.MO.VE@nada.kth.se>
// @date@	2004-05-20

struct MyStruct(Type){
	alias .MyStruct!(Type) Alias;
}

alias MyStruct!(int) Ali2;
