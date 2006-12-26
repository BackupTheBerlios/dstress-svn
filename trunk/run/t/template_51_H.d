// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_H;

template T(cfloat v){
	const cfloat T = v;
}

int main(){
	cfloat g = T!(cfloat.nan) + T!(-cfloat.nan);
	if(g != cfloat.nan - cfloat.nan){
		assert(0);
	}

	return 0;
}


