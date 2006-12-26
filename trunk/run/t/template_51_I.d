// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_I;

template T(creal v){
	const creal T = v;
}

int main(){
	creal g = T!(creal.nan) + T!(-creal.nan);
	if(g != creal.nan - creal.nan){
		assert(0);
	}

	return 0;
}


