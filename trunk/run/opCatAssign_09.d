// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>	
// @date@	2005-03-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3210

module dstress.run.opCatAssign_09;

int main(){

	bool[] a;
	bool[] b;
    
	a.length = 8;
	a[0] = 0;
	a[1] = 1;
	a[2] = 1;
	a[3] = 0;
	a[4] = 0;
	a[5] = 1;
	a[6] = 0;
	a[7] = 0;
    
	assert(a.length==8);
	assert(b.length==0);
	b ~= a;

	assert(a.length==8);
	assert(b.length==8);
	
	assert(a[0]==0);
	assert(a[1]==1);
	assert(a[2]==1);
	assert(a[3]==0);
	assert(a[4]==0);
	assert(a[5]==1);
	assert(a[6]==0);
	assert(a[7]==0);
	
	assert(b[0]==0);
	assert(b[1]==1);
	assert(b[2]==1);
	assert(b[3]==0);
	assert(b[4]==0);
	assert(b[5]==1);
	assert(b[6]==0);
	assert(b[7]==0);
	
	
	b ~= a;

	assert(a.length==8);
	assert(b.length==16);

	assert(a[0]==0);
	assert(a[1]==1);
	assert(a[2]==1);
	assert(a[3]==0);
	assert(a[4]==0);
	assert(a[5]==1);
	assert(a[6]==0);
	assert(a[7]==0);
	
	assert(b[0]==0);
	assert(b[1]==1);
	assert(b[2]==1);
	assert(b[3]==0);
	assert(b[4]==0);
	assert(b[5]==1);
	assert(b[6]==0);
	assert(b[7]==0);
	assert(b[8]==0);
	assert(b[9]==1);
	assert(b[10]==1);
	assert(b[11]==0);
	assert(b[12]==0);
	assert(b[13]==1);
	assert(b[14]==0);
	assert(b[15]==0);

	return 0;
}
