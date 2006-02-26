// $HeadURL$
// $Date$
// $Author$

module dstress.run.bool_03;

int main(){
	bool a;
	bool b;
	bool c;
	
	a = false; b = !a;
	assert( a == false );
	assert( b == true  );
	a = true; b = !a;
	assert( a == true  );
	assert( b == false );
	
	// AndAnd
	a=true; b=true; c=a&&b;
	assert( a == true  );
	assert( b == true  );
	assert( c == true  );
	a=true; b=false; c=a&&b;
	assert( a == true  );
	assert( b == false );
	assert( c == false );
	a=false; b=true; c=a&&b;
	assert( a == false );
	assert( b == true  );
	assert( c == false );
	a=false; b=false; c=a&&b;
	assert( a == false );
	assert( b == false );
	assert( c == false );

	// OrOr
	a=true; b=true; c=a||b;
	assert( a == true  );
	assert( b == true  ),
	assert( c == true  );
	a=true; b=false; c=a||b;
	assert( a == true  );
	assert( b == false );
	assert( c == true  );
	a=false; b=true; c=a||b;
	assert( a == false );
	assert( b == true  );
	assert( c == true  );
	a=false; b=false; c=a||b;
	assert( a == false );
	assert( b == false );
	assert( c == false );	
	
	// Equality Expression ("==")
	a=true; b=true; c= a==b;
	assert( a == true  );
	assert( b == true  );
	assert( c == true  );
	a=true; b=false; c= a==b;
	assert( a == true  );
	assert( b == false );
	assert( c == false );
	a=false; b=true; c= a==b;
	assert( a == false );
	assert( b == true  );
	assert( c == false );
	a=false; b=false; c= a==b;
	assert( a == false );
	assert( b == false );
	assert( c == true  );

	// Inequality Expression ("!=")
	a=true; b=true; c= a!=b;
	assert( a == true  );
	assert( b == true  );
	assert( c == false );
	a=true; b=false; c= a!=b;
	assert( a == true  );
	assert( b == false );	
	assert( c == true  );
	a=false; b=true; c= a!=b;
	assert( a == false );
	assert( b == true  );
	assert( c == true  );
	a=false; b=false; c= a!=b;
	assert( a == false );
	assert( b == false );
	assert( c == false );
	
	return 0; 
}
