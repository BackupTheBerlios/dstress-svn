// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-04-02
// @uri@	news:5efpfwr0e1l5$.ks45nx0xz2zf$.dlg@40tude.net

// For floating point operations and expression intermediate values,
// a greater precision can be used than the type of the expression.
// Only the minimum precision is set by the types of the operands,
// not the maximum.
 
module dstress.run.float_22;

int main(){
	float f = 0.0000195f;
	assert(typeid(typeof(0.0000195f)) == typeid(float));

	real diff = (0.5f + f * 1e6f) - (0.5f + 0.0000195f * 1e6f);


	if(diff < 0){
		diff *= -1;
	}

	if(diff < float.epsilon * 8){
		return 0;
	}
}
