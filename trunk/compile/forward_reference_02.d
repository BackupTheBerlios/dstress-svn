// $HeadURL$
// $Date$
// $Author$

// @author@	ndove (http://www.dsource.org/forums/profile.php?mode=viewprofile&u=142)
// @date@	2004-10-12
// @url@	http://www.dsource.org/forums/viewtopic.php?t=402

module dstress.compile.forward_reference_02;

struct Bounds{
   int Bottom = 0;
   int Left   = 0;
   int Right  = 0;
   int Top    = 0;
}

struct Position{
   int X = 0;
   int Y = 0;
}

class Something{
   Bounds   bounds;
   Position position;
}

