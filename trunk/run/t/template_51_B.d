// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=731
// @desc@	[Issue 731] New: Positive and negative NaN in template arguments causes link conflict

module dstress.run.t.template_51_B;

template T(float v){
	const float T = v;
}

int main(){
	float g = T!(float.nan) + T!(-float.nan);
	if(g != float.nan - float.nan){
		assert(0);
	}

	return 0;
}


