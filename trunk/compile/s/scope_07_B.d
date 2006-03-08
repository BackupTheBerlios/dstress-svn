// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.scope_07_B;

void main(){
	scope(failure) throw new Exception("msg 1");
	scope(failure) throw new Exception("msg 2");
	throw new Exception("msg 0");
}
