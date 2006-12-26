// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_A;

template T(double v){
	const double T = v;
}

int main(){
	double g = T!(double.nan) + T!(-double.nan);
	if(g != double.nan - double.nan){
		assert(0);
	}

	return 0;
}


