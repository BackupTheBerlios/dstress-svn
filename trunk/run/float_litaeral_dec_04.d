int main(){
	float f=3.40282e+38; // ~~ float.max
	assert(f<f.max);
	assert(f>3e+38);
	return 0;
}
