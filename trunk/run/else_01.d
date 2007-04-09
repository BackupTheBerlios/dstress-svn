// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3712

module dstress.run.else_01;

int main(char[][] args) {
	if(args.length){
	}else{
		debug(dummy) int i;
	}
	return 0;
}
