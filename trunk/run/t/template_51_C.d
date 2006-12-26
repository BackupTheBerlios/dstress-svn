// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_C;

template T(real v){
	const real T = v;
}

int main(){
	real g = T!(real.nan) + T!(-real.nan);
	if(g != real.nan - real.nan){
		assert(0);
	}

	return 0;
}


