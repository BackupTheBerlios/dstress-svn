// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-07-07
// @uri@	news:opstiqe10r23k2f5@nrage.netwin.co.nz

module dstress.run.s.synchronized_01_B;

int main(){
	Object data = new Object();
	
	synchronized(data) {
	}

	return 0;
}
