// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/struct_09.d,v 1.1 2004/08/20 23:42:45 th Exp $

struct MyStruct{
private:
	    int m_data;
}
	
int test(){
	MyStruct m;
	m.m_data = 3;
	return 0;
}
