
int main(){
	double d;
	assert(double.sizeof == 8);
	assert(double.sizeof == d.sizeof);
	assert(double.sizeof == (4.2).sizeof);
	assert(double.sizeof == typeid(double).tsize());
	return 0;
}
