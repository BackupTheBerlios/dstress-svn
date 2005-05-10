// $HeadURL: http://dstress.kuehne.cn/compile/bug_cgcod_1445_C.d $
// $Date: 2005-05-06 11:35:44 +0200 (Fr, 06 Mai 2005) $
// $Author: thomask $

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-05-04
// @uri@	news:d5b26o$2g7r$1@digitaldaemon.com

module dstress.compile.bug_cgcod_1445_C;

static int[1][5] array = [[1],[2],[3],[4],[5] ];

void Lookup(int which){
	switch(which){
		case 0:
		return array[which];
	}
}

