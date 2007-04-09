// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <ao@pathlink.com>
// @date@	2007-03-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=10738
// @desc@	switch bug

module dstress.run.s.switch_24_B;

int main(){
	int x = 0;

	switch("#!"){
		case "#!":
			x++;
			break;
		case "\xFF\xFE"c:
			assert(0);
			break;
		default:
			assert(0);
			break;
	}

	if(1 != x){
		assert(0);
	}

	return 0;
}

