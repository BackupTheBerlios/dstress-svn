// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_E;

template T(ifloat v){
	const ifloat T = v;
}

int main(){
	ifloat g = T!(ifloat.nan) + T!(-ifloat.nan);
	if(g != ifloat.nan - ifloat.nan){
		assert(0);
	}

	return 0;
}


