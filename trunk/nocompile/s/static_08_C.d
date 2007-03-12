// $HeadURL$
// $Date$
// $Author$

// @author@	downs <default_357-line@yahoo.de>
// @date@	200d-03-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1051
// @desc@	[Issue 1051] foreach over member array in static func causes ICE

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.static_08_C;

struct C {
	int[] i;

	static void crash() {
		int y = i[0];
	}
}

