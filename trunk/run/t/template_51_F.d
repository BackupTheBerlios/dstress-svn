// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_F;

template T(ireal v){
	const ireal T = v;
}

int main(){
	ireal g = T!(ireal.nan) + T!(-ireal.nan);
	if(g != ireal.nan - ireal.nan){
		assert(0);
	}

	return 0;
}


