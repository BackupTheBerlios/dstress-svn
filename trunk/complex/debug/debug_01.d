int main(){
	int x;
	assert(x==0);
	debug{
		x++;
	}
	assert(x==1);
	return 0;
}
