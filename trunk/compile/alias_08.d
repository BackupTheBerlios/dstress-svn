// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/compile/alias_08.d,v 1.1 2004/09/23 05:51:31 th Exp $

// @author@	Oskar Linde <d98-oliRE.MO.VE@nada.kth.se>
// @date@	2004-05-20

struct MyStruct(Type){
	alias .MyStruct!(Type) Alias;
}

alias MyStruct!(int) Ali2;
