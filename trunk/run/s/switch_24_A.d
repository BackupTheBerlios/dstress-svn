// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <ao@pathlink.com>
// @date@	2007-03-24
// @uri@	news:ce0a334389688c93c3bbfaa07d6@news.digitalmars.com
// @desc@	switch bug

module dstress.run.s.switch_24_A;

int main(){
	int x = 0;

	switch("#!"){
		case "#!":
			x++;
			break;
		case "\xFF\xFE":
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

