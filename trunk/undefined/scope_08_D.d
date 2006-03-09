// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-03-09
// @uri@	news:bug-29-3@http.d.puremagic.com/bugzilla/

module dstress.undefined.scope_08_D;

int main(){
	scope(exit){
		return 0;
	}

	return 1;
}
