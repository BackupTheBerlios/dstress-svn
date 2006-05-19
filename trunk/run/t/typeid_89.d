// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-03-22
// @uri@	news:bug-60-3@http.d.puremagic.com/bugzilla/

module dstress.run.t.typeid_89;

int main(){
	Typeid t = typeid(bit);

	if(!t){
		assert(0);
	}

	return 0;
}
