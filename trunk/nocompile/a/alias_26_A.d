// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-13
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4985

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.alias_26_A;

alias main a;
alias void a;

void main(){
    a;
} 