
// @author@	Burton Radons <burton-radons@shaw.ca>
// @date@	2004-09-19

int main(){
	int x=1;
	assert(x==1);
	if(x)
		version(none)
			x++;
	assert(x==1);
	return 0;
}
