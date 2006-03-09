// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-03-09
// @uri@	news:bug-29-3@http.d.puremagic.com/bugzilla/

module dstress.undefined.scope_08_F;

int main(){
	scope(failure){
		return 0;
	}

	throw new Exception("msg");
}
