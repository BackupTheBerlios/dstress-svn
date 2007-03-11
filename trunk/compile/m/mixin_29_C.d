// $HeadURL$
// $Date$
// $Author$

// @author@	Bob W <nospam@aol.com>
// @date@	2007-01-27
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?search_txt=&group=digitalmars.D.announce&article_id=6983
// @desc@	Re: DMD 1.004 release

module dstress.compile.m.mixin_29_C;

template Mix() {
	int i;
}

union Z {
	struct {
		mixin Mix!();
	}
}
