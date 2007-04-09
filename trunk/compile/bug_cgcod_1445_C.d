// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-05-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3886

module dstress.compile.bug_cgcod_1445_C;

static int[1][5] array = [[1],[2],[3],[4],[5] ];

void Lookup(int which){
	switch(which){
		case 0:
		return array[which];
	}
}

