// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3712

module dstress.run.do_while_04;

int main(char[][] args) {
	do{
		version(dummy) int i;
	}while(args.length>20)
	return 0;
}
