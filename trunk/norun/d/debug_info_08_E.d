// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-08-01
// @uri@	news:dcl3e6$2hjr$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -g
// __GDB_SCRIPT__ run\nbacktrace
// __GDB_PATTERN__ SIGFPE.*debug_info_08_E[.]d:17

module dstress.norun.d.debug_info_08_E;
 
int main(){
	int a=2;
	a=a/(a-2); /* divide by zero */
	return 0;
}
