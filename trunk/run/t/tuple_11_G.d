// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-12-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=684
// @desc@	[Issue 684] dmd should compile this

module dstress.run.t.tuple_11_G;

uint t_length = uint.max;
uint m_length = uint.max;

class X{
	static template a(T...){
		template a(M...){
			void a(M m){
				t_length = T.length;
				m_length = M.length;
			}
		}
	}
}

int main(){
	X.a!(creal)();

	if(t_length != 1){
		assert(0);
	}
	if(m_length != 0){
		assert(0);
	}

	return 0;
}
