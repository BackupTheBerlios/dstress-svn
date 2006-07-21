// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	news:dmquts$177g$1@digitaldaemon.com

module dstress.run.b.bug_glue_387_E;

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
	atomicStore!(uint)( 2 );

	return 0;
}

