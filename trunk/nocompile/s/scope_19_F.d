// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1518
// @desc@	[Issue 1518] Crash using 'scope', 'with' and undefined 'RegExp'

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.scope_19_F;

int main(){
	int i;
	{
		scope(failure) i++;
		with(XXX){
		}
	}
	return 0;
}
