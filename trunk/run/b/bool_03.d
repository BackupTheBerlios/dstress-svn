// $HeadURL$
// $Date$
// $Author$

module dstress.run.bool_03;

int main(){
	bool a;
	bool b;
	bool c;

	a = false; b = !a;
	if(a != false){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	a = true; b = !a;
	if(a != true){
		assert(0);
	}
	if(b != false){
		assert(0);
	}

	// AndAnd
	a=true; b=true; c=a&&b;
	if(a != true){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=true; b=false; c=a&&b;
	if(a != true){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != false){
		assert(0);
	}
	a=false; b=true; c=a&&b;
	if(a != false){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != false){
		assert(0);
	}
	a=false; b=false; c=a&&b;
	if(a != false){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != false){
		assert(0);
	}

	// OrOr
	a=true; b=true; c=a||b;
	if(a != true){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=true; b=false; c=a||b;
	if(a != true){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=false; b=true; c=a||b;
	if(a != false){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=false; b=false; c=a||b;
	if(a != false){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != false){
		assert(0);
	}

	// Equality Expression ("==")
	a=true; b=true; c= a==b;
	if(a != true){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=true; b=false; c= a==b;
	if(a != true){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != false){
		assert(0);
	}
	a=false; b=true; c= a==b;
	if(a != false){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != false){
		assert(0);
	}
	a=false; b=false; c= a==b;
	if(a != false){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != true){
		assert(0);
	}

	// Inequality Expression ("!=")
	a=true; b=true; c= a!=b;
	if(a != true){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != false){
		assert(0);
	}
	a=true; b=false; c= a!=b;
	if(a != true){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=false; b=true; c= a!=b;
	if(a != false){
		assert(0);
	}
	if(b != true){
		assert(0);
	}
	if(c != true){
		assert(0);
	}
	a=false; b=false; c= a!=b;
	if(a != false){
		assert(0);
	}
	if(b != false){
		assert(0);
	}
	if(c != false){
		assert(0);
	}

	return 0;
}
