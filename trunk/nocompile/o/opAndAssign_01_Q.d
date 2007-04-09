// $HeadURL$
// $Date$
// $Author$

// @author@     Derek Parnell <derek@psych.ward>
// @date@       2005-06-20
// @uri@        http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4363
// @desc@       Internal error: ../ztc/cgcs.c 213

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opAndAssign_01_Q;

void main(){
	cdouble[1] f=8.0i;
	f[0] &= 1.0i + 2.0;
}
