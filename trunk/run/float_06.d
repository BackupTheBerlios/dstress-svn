
int main(){
	float f;
	assert(float.epsilon > 0);
	assert(float.epsilon < 0.00001);
	assert(float.epsilon > double.epsilon);
	assert(float.epsilon == f.epsilon);
	assert(float.epsilon == (4.2f).epsilon);
	return 0;
}
