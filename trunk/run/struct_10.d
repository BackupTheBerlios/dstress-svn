// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-08-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1298

module dstress.run.struct_10;

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
