// $HeadURL$
// $Date$
// $Author$

// @auhtor@	Derek Parnell <derek@psych.ward>
// @date@	2005-04-02
// @uri@	news:5efpfwr0e1l5$.ks45nx0xz2zf$.dlg@40tude.net

module dstress.run.real_22;

int main(){
	real f = 0.0000195l;
	assert(typeid(typeof(0.0000195l)) == typeid(real));
	assert(.5 + f * 1e6 == .5 + 0.0000195f * 1e6);
	return 0;
}
