// $HeadURL$
// $Date$
// $Author$

// based on: gcc.c-torture/execute/ieee/acc2.c

module dstress.run.d.double_27_D;

double func (double *array){
	double d = *array;

	if (d == 1.0){
		return d;
	}else{
		return d + func (array + 1);
	}
}

int main (){
	const double values[] = [double.max, 2.0, 0.5, 1.0];

	if(func(values) != double.max){
		assert(0);
	}

	return 0;
}
