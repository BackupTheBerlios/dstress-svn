// $HeadURL$
// $Date$
// $Author$

// @author@	marko <tm030127d@galeb.etf.bg.ac.yu>
// @date@	2005-02-10
// @uri@	news:opslzmx6m0hjnhpc@pentium2
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2934

module dstress.run.new_01;

struct VNode{
    int a;
    Node next;
}

alias VNode* Node;

int main(){
    Node n = new VNode;
	return 0;
} 
