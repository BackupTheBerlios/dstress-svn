// $HeadURL$
// $Date$
// $Author$

// @author@	Jay <Jay_member@pathlink.com>
// @date@	2005-07-05
// @uri@	news:dacrtc$26ik$1@digitaldaemon.com

module dstress.run.d.delete_10_A;

struct Box{
	int i;
}

int main(){
        Box*[10] boxes;
        boxes[0] = new Box;
        delete boxes[0];
        return 0;
}