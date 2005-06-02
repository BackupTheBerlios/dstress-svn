// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-04-02
// @uri@	news:5efpfwr0e1l5$.ks45nx0xz2zf$.dlg@40tude.net

module dstress.run.float_22;

int main(){
	float f = 0.0000195f;
	assert(typeid(typeof(0.0000195f)) == typeid(float));
	assert(.5f + f * 1e6f == .5f + 0.0000195f * 1e6f);
	return 0;
}
