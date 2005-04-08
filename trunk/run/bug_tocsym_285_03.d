// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsowngukl6yjbe6@sandmann.maerchenwald.net

module dstress.run.bug_tocsym_285_03;

struct Iterator{
	size_t* m_ptr;

	int opEquals(Iterator iter){
		return (m_ptr == iter.m_ptr);
	}
}

int main(char[][] args){
	Iterator a;
	Iterator b;

	assert(a==b);	
	size_t i;
	a.m_ptr=&i;
	assert(a!=b);

	return 0;
}
