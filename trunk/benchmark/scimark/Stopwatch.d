module scimark.Stopwatch;

private import std.c.stdlib;
private import std.c.time;

// @bugwatch@ handle a bug in Phobos (dmd-0.105)
version(linux){
	const double CLOCKS_PER_SEC = 1000000.0;
}else version(darwin){
	const double CLOCKS_PER_SEC = 100.0;
}

struct Stopwatch_struct{
    int running;        /* boolean */
    double last_time;
    double total;
}

alias Stopwatch_struct* Stopwatch;

double seconds()
{
        return (cast(double) clock()) / CLOCKS_PER_SEC; 
}

void Stopwtach_reset(Stopwatch Q)
{
    Q.running = 0;         /* false */
    Q.last_time = 0.0;
    Q.total= 0.0;
}


Stopwatch new_Stopwatch()
{
    Stopwatch S = cast(Stopwatch) malloc(Stopwatch_struct.sizeof);
    if (S == null)
        return null;

    Stopwtach_reset(S);
    return S;
}

void Stopwatch_delete(Stopwatch S)
{
    if (S != null)
        free(S);
}


/* Start resets the timer to 0.0; use resume for continued total */

void Stopwatch_start(Stopwatch Q)
{
    if (! (Q.running)  )
    {
        Q.running = 1;  /* true */
        Q.total = 0.0;
        Q.last_time = seconds();
    }
}
   
/** 
    Resume timing, after stopping.  (Does not wipe out
        accumulated times.)

*/

void Stopwatch_resume(Stopwatch Q)
{
    if (!(Q.running))
    {
        Q.last_time = seconds(); 
        Q.running = 1;  /*true*/
    }
}
   
void Stopwatch_stop(Stopwatch Q)  
{ 
    if (Q.running) 
    { 
        Q.total += seconds() - Q.last_time; 
        Q.running = 0;  /* false */
    }
}
  
 
double Stopwatch_read(Stopwatch Q)
{  
    
    if (Q.running) 
    {
        double t = seconds();
        Q.total += t - Q.last_time;
        Q.last_time = t;
    }
    return Q.total;
}
        
