// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-03-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=60

module dstress.run.t.typeid_89;

int main(){
	TypeInfo t = typeid(bit);

	if(!t){
		assert(0);
	}

	return 0;
}
