// $HeadURL$
// $Date$
// $Author$

// @author@	John Reimer <brk_6502@NO_SPA_M.yahoo.com>
// @date@	2004-07-11
// @uri@	news:cct6f0$cj6$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=783

module dstress.run.break_01;

int main() {
	while (true) {
		try {
			if (true){
                	        break;
			}else{
				assert(0);
			}
		} catch (Object e) {
                }
		assert(0);
        }
        return 0;
}
