int main(){
	float f = 1.2e-3;
	float a = 12.0;
	float b = 10000.0;
	float c = a/b;
	assert(f == c);
	assert(f == cast(float)a/b);
	return 0;
}
