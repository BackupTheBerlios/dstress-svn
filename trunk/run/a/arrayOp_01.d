// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// Although Walter claimed in one newsgroup post that he was going to abandon
// implementing array ops for 1.0, the feature is still in all its glory in
// the spec.

module dstress.run.a.arrayOp_01;

int[] x = [ 3, 4, 6 ];

int main() {
	int[] z = x[] + 8;

	assert (z[0] == 11);
	assert (z[1] == 12);
	assert (z[2] == 14);

	return 0;
}
