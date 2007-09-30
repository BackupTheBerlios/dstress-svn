// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1518
// @desc@	[Issue 1518] Crash using 'scope', 'with' and undefined 'RegExp'

module dstress.run.s.scope_19_D;

int main(){
	int i;
	try{
		scope(failure) i++;
		with(new Object()){
			throw new Exception("");
		}
	}catch{
		if(1 != i){
			assert(0);
		}
	}
	return 0;
}
