// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-25
// @uri@	news:opsn61vgpg23k2f5@nrage.netwin.co.nz

module dstress.run.debug_info_01;

typedef fn function() fn;

byte status;

fn foo() {
	status++;
	return &foo;
}

int main(){
	assert(status==0);
	fn p = foo();
	assert(status==1);
	p();
	assert(status==2);
	return 0;
} 