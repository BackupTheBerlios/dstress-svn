// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_dec_05;

int main(){
	int i = 2_147_483_647;
	assert(i==i.max);
	return 0;
}
