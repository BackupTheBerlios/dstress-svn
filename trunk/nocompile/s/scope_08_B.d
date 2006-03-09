// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-03-09
// @uri@	news:bug-29-3@http.d.puremagic.com/bugzilla/

// __DESTRESS_ELINE__ 15

module dstress.nocompile.s.scope_08_B;

void main(){
	scope(success){
		return 0;
	}
}
