// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1518
// @desc@	[Issue 1518] Crash using 'scope', 'with' and undefined 'RegExp'

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.scope_19_B;

int main(){
	int i;
	{
		scope(exit) i++;
		with(XXX){
		}
	}
	if(1 != i){
		assert(0);
	}
	return 0;
}
