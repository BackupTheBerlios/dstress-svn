
// @author@	Paul Runde <prunde@consolidated.net>
// @date@	2004-06-02
// @uri@	news://c9jcpq$1fu$1@digitaldaemon.com

int[2] x = 3;
float y = 0.0f;

int main(){
	assert(x[0]==3);
	assert(x[1]==3);
	y = -100;
	assert(x[0]==3);
	assert(x[1]==3);
	return 0;
}
