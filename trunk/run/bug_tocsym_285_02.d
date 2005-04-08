// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsowngukl6yjbe6@sandmann.maerchenwald.net

module dstress.run.bug_tocsym_285_02;

class Iterator(T){
	T* m_ptr;

	int opEquals(Iterator iter){
		return (m_ptr == iter.m_ptr);
	}

	int opCmp(Iterator iter){
		return (m_ptr - iter.m_ptr);
	}
}

int main(char[][] args){
	Iterator!(int) a=new Iterator!(int);
	Iterator!(int) b=new Iterator!(int);

	assert(a==b);	
	int i;
	a.m_ptr=&i;
	assert(a!=b);

	return 0;
}
