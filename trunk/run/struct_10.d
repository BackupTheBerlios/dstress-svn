// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/struct_10.d,v 1.2 2004/09/22 23:53:46 th Exp $

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-08-06
// @uri@	news://cf0r1f$u4n$1@digitaldaemon.com

struct MyStruct{
	static MyStruct opCall(){
		MyStruct s;
		return s;
	}
}

int main(){
	MyStruct s = MyStruct();
	return 0;
}
