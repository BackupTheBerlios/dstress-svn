// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-03-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=29

// __DESTRESS_ELINE__ 15

module dstress.nocompile.s.scope_08_C;

void main(){
	scope(failure){
		return 0;
	}

	throw new Exception("msg");
}
