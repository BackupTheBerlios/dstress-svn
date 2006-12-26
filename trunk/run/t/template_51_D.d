// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_D;

template T(idouble v){
	const idouble T = v;
}

int main(){
	idouble g = T!(idouble.nan) + T!(-idouble.nan);
	if(g != idouble.nan - idouble.nan){
		assert(0);
	}

	return 0;
}


