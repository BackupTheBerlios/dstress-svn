// @author@	John Reimer <brk_6502@NO_SPA_M.yahoo.com>
// @date@	2004-07-11
// @uri@	news://cct6f0$cj6$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:783

module dstress.run.break_02;

int main() {
	while (true) {
		try {
			throw new Object();
		} catch (Object e) {
			if(true){
				break;
			}else{
				assert(0);
			}
                }
		assert(0);
        }
        return 0;
}
