// $HeadURL$
// $Date$
// $Author$

module dstress.run.constructor_11;

int status;

static this(){
	assert(status==0);
	status++;
}

int main(){
	assert(status==1);
	return 0;
}
