
int main(){
	float d;
	assert(float.sizeof == 4);
	assert(float.sizeof < double.sizeof);
	assert(float.sizeof == d.sizeof);
	assert(float.sizeof == (4.2f).sizeof);
	assert(float.sizeof == typeid(float).tsize());
	return 0;
}
