
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
