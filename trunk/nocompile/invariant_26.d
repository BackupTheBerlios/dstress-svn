// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 18

module dstress.nocompile.invariant_26;

class MyClass{
	public void bug(){
	}

	private void middle(){
		bug();
	}

	invariant{
		middle();
	}
}
