// @author@	Kris <someidiot@earthlink.dot.dot.dot.net>
// @date@	2004-06-02

int status_static;
int status_dyn;

int main(){

	class InnerClass{
		static this(){
			status_static++;
		}
		this(){
			status_dyn++;
		}
	}

	InnerClass i;
	assert(status_static==1);
	assert(status_dyn==0);

	i=new InnerClass();
	assert(status_static==1);
	assert(status_dyn==1);

	return 0;
}
