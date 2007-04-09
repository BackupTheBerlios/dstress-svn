// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3712

module dstress.run.for_04;

int main() {
	int i;
	for (i = 0; i < 10; i++){
		debug i=22;
	}

	if(i != 10){
		assert(0);
	}

	return 0;
}
