// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_03_B;

const int x = 1;

int main(){
	static assert(x == 1);
	static assert(.x == 1);
	
	const int x = 2;
	static assert(x == 2);
	static assert(.x == 1);

	{
		const int x = 3;
		static assert(x == 3);
		static assert(.x == 1);
	}

	static assert(x == 2);
	static assert(.x == 1);

	return 0;
}
	
