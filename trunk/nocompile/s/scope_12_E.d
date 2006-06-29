// $HeadURL$
// $Date$
// $Author$

// @author@	<daiphoenix@lycos.com>
// @date@	2006-03-14
// @uri@	news:bug-47-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 17

module dstress.nocompile.s.scope_12_E;

int main(){
	int y;
	
	{
		int y;
	}

	return 0;
}
