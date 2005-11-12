// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 19

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
