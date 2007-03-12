// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2006-07-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=236
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1036
// @desc@	[Issue 236] Class literal expression always says "base classes expected"

module dstress.run.c.class_26_B;

int main(){
	int status;
	
	int delegate() foo(){
		return &(new class
			{
				int* _status;

				this(){
					_status = &status;
				}

				int dg(){
					return ++(*_status);
				}
			}
		).dg;
	}

	int delegate() bar = foo();
	
	if(status != 0){
		assert(0);
	}

	if(bar() != 1){
		assert(0);
	}

	if(status != 1){
		assert(0);
	}

	return 0;
}
