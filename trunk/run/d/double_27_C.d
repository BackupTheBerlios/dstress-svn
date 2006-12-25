// $HeadURL$
// $Date$
// $Author$

// based on: gcc.c-torture/execute/ieee/acc1.c

module dstress.run.d.double_27_C;

double func (double *array){
	double d = *array;

	if (d == 0.0){
		return d;
	}else{
		return d + func (array + 1);
	}
}

int main (){
	const double values[] = [0.1e-100, 1.0, -1.0, 0.0];

	if(func(values.ptr) != 0.1e-100){
		assert(0);
	}

	return 0;
}
