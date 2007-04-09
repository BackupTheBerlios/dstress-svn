// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-09-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8292
// @desc@	lazy in main

// __DSTRESS_ELINE__ 14

module dstress.nocompile.m.main_07_A;

int main (lazy char [][] args){
	return args.length;
}
