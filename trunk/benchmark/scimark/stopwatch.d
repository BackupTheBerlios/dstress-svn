// $HeadURL$
// $Date$

private import std.c.time;

// @bugwatch@ handle a bug in Phobos (prior to dmd-0.106)
version(linux){
	const double CLOCKS_PER_SEC = 1000000.0;
}else version(darwin){
	const double CLOCKS_PER_SEC = 100.0;
}else{
	const double CLOCKS_PER_SEC = std.c.time.CLOCKS_PER_SEC;
}

class Stopwatch {
private:
    bool    running;
    clock_t  last_time, total;

public:

    void reset()
    {
        running = false; 
        last_time = 0;
        total= 0;
    }

    this()
    {
        reset();
    }

    /* Start resets the timer to 0; use resume for continued total */

    void start()
    {
        if (!running) {
            running = true;
            total = 0;
            last_time = clock();
        }
    }

    /** 
    Resume timing, after stopping.  (Does not wipe out
        accumulated times.)

    */

    void resume()
    {
        if (!running) {
            last_time = clock(); 
            running = true;
        }
    }

    void stop()
    {
        if(running) {
            total += clock() - last_time; 
            running = false;
        }
    }
  
 
    double read()
    {
        if(running) {
            clock_t t = clock();
            total += t - last_time;
            last_time = t;
        }
        return (cast(double)total) / CLOCKS_PER_SEC;
    }
}
