// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/cast_05.d,v 1.2 2004/09/22 23:25:38 th Exp $

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-06
// @uri@	news://cf0mo2$rfi$1@digitaldaemon.com

int main(){
	long l = cast(long) 12.0;
	long L = 12L;
	assert(l == L);

	ulong u = cast(ulong) 12.0;
	ulong U = 12U;
	assert(U == u);
	
	return 0;
}
