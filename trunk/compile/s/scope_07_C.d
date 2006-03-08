// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.scope_07_C;

void main(){
	scope(failure) throw new Exception("msg 1");
	scope(failure) throw new Exception("msg 2");
}
