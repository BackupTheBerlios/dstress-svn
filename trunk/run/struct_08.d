// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/struct_08.d,v 1.1 2004/08/20 23:42:54 th Exp $

struct MyStruct{
	int data() {
		return m_data;
	}

	void data(int value) {
		m_data = value;
	}

private:
	    int m_data;
}
	
int main(){
	MyStruct m;

	m.data = 3;
	assert ( m.data == 3);

	m.data(5);
	assert ( m.data() == 5);

	return 0;
}
