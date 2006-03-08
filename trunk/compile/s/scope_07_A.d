// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.scope_07_A;

void main(){
	scope(exit) throw new Exception("msg 1");
	scope(failure) throw new Exception("msg 2");
	throw new Exception("msg 0");
}
