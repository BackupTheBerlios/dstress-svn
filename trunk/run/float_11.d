
int main(){
	float f;
	assert(float.min_exp < float.min_10_exp);
	assert(float.min_exp > double.min_exp);
	assert(float.min_exp == f.min_exp);
	assert(float.min_exp == (4.2f).min_exp);
	return 0;
}
