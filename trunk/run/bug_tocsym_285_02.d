// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3551

module dstress.run.bug_tocsym_285_02;

class Iterator{
	size_t* m_ptr;

	int opEquals(Iterator iter){
		return (m_ptr == iter.m_ptr);
	}

	int opCmp(Iterator iter){
		return (m_ptr - iter.m_ptr);
	}
}

int main(char[][] args){
	Iterator a=new Iterator;
	Iterator b=new Iterator;

	assert(a==b);	
	size_t i;
	a.m_ptr=&i;
	assert(a!=b);

	return 0;
}
