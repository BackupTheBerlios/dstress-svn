// $HeadURL$
// $Date$
// $Author$

// based on: gcc.c-torture/execute/ieee/980619-1.c 

module dstress.run.f.float_28_A;

int main(){
	float reale = 1.0f;
	float oneplus;
	int i;

	for(i = 0; ; i++){
		oneplus = 1.0f + reale;
		if(oneplus == 1.0f){
			break;
		}

		reale = reale / 2.0f;
	}

	/* Assumes ieee754 accurate arithmetic above. */
	if(i != 24){
		assert(0);
	}

	return 0;
}
