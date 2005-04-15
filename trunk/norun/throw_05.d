// $HeadURL$
// $Date$
// $Author$

module dstress.norun.throw_05;

static this(){
	throw new Exception("Message\n");
}

int main(){
	return 0;
}
