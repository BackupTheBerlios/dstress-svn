
int status;

void check(int plus=1){
	status+=plus;
}

int main(){
	assert(status==0);
	check();
	assert(status==1);
	check(3);
	assert(status==4);
	return 0;
}
