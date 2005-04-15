// $HeadURL$
// $Date$
// $Author$

module dstress.run.init_05;

int main(){
	float i=2f;
	assert(float.init==i.init);
	assert(i==2f);
	return 0;
}
