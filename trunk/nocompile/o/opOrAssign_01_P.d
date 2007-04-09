// $HeadURL$
// $Date$
// $Author$

// @author@     Derek Parnell <derek@psych.ward>
// @date@       2005-06-20
// @uri@        http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4363
// @desc@       Internal error: ../ztc/cgcs.c 213

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opOrAssign_01_P;

void main(){
	cfloat[1] f=8.0fi;
	f[0]|=1.0fi + 2.0f;
}
