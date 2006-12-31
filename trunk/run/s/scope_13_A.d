// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-06-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=199

module dstress.run.s.scope_13_A;

int main(){
	int i;
	
label: 
	{
		scope(exit) i++;
		i=3;
	}

	if(i != 4){
		assert(0);
	}


	return 0;
}
