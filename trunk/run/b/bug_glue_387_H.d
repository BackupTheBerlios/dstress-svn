// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5725

module dstress.run.b.bug_glue_387_H;

template atomicStore( T )
{
	void atomicStore(T newval)
	{
		volatile asm
		{
			mov EAX, newval;
		}
	}
}

int main(){
	atomicStore!(int)( 1 );

	return 0;
}

