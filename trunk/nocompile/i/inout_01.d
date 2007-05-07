// $HeadURL$
// $Date$
// $Author$

// @author@	 Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5389

// __DSTRESS_ELINE__ 19

module dstress.nocompile.i.inout_01;

void test(ref byte i){
	i++;
}

void main(){
	short s;
	test(s);
	assert(s==1);
}
