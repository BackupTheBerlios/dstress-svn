// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	news:dmquts$177g$1@digitaldaemon.com

module dstress.run.b.bug_glue_387_G;

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
	atomicStore!(uint)( 1 );

	return 0;
}

