// $HeadURL$
// $Date$
// $Author$

module dstress.run.named_entity_03;

// "-//W3C//ENTITIES Special//EN//HTML"

int main(){
	assert('\&quot;'==34);
	assert('\&amp;'==38);
	assert('\&lt;'==60);
	assert('\&gt;'==62);
	assert('\&OElig;'==338);
	assert('\&oelig;'==339);
	assert('\&Scaron;'==352);
	assert('\&scaron;'==353);
	assert('\&Yuml;'==376);
	assert('\&circ;'==710);
	assert('\&tilde;'==732);
	assert('\&ensp;'==8194);
	assert('\&emsp;'==8195);
	assert('\&thinsp;'==8201);
	assert('\&zwnj;'==8204);
	assert('\&zwj;'==8205);
	assert('\&lrm;'==8206);
	assert('\&rlm;'==8207);
	assert('\&ndash;'==8211);
	assert('\&mdash;'==8212);
	assert('\&lsquo;'==8216);
	assert('\&rsquo;'==8217);
	assert('\&sbquo;'==8218);
	assert('\&ldquo;'==8220);
	assert('\&rdquo;'==8221);
	assert('\&bdquo;'==8222);
	assert('\&dagger;'==8224);
	assert('\&Dagger;'==8225);
	assert('\&permil;'==8240);
	assert('\&lsaquo;'==8249);
	assert('\&rsaquo;'==8250);
	return 0;
}