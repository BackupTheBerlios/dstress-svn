// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-04-02
// @uri@	news:5efpfwr0e1l5$.ks45nx0xz2zf$.dlg@40tude.net

module dstress.run.real_22;

int main(){
	real f = 0.0000195L;
	
	if(typeid(typeof(0.0000195L)) != typeid(real)){
		assert(0);
	}

	if(.5L + f * 1e6L != .5L + 0.0000195L * 1e6L){
		assert(0);
	}

	return 0;
}
