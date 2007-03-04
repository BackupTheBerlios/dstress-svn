// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-03-09
// @uri@	news:d0nmd8$427$1@digitaldaemon.com
// @url@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3129

module dstress.compile.template_class_08;

class Template( T1 ){
}

alias Template!( int ) Int;

alias Template!( Template!(Int) ) Bug;