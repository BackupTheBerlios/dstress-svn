/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Mark C. Lewis

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release nbody.d
*/

import std.math, std.string, std.stream;

void main(char[][] args)
{
    int n = args.length > 1 ? std.string.atoi(args[1]) : 1;

    NBodySystem bodies = new NBodySystem();

    stdout.writefln("%0.9f",bodies.energy());
    for(int i = 0; i < n; i++)
    {
        bodies.advance(0.01);
    }
    stdout.writefln("%0.9f",bodies.energy());
}

class NBodySystem: System
{
public:
    this()
    {
        double px = 0.0;
        double py = 0.0;
        double pz = 0.0;
        foreach(Body i; bodies)
        {
            px += i.vx * i.mass;
            py += i.vy * i.mass;
            pz += i.vz * i.mass;
        }
        bodies[0].offsetMomentum(px,py,pz);
    }

    void advance(double dt)
    {
        double dx, dy, dz, distance, mag;

        foreach(int idx, Body i; bodies)
        {
            foreach(Body j; bodies[idx + 1 .. length])
            {
                dx = i.x - j.x;
                dy = i.y - j.y;
                dz = i.z - j.z;

                distance = sqrt(dx*dx + dy*dy + dz*dz);
                mag = dt / (distance * distance * distance);

                i.vx -= dx * j.mass * mag;
                i.vy -= dy * j.mass * mag;
                i.vz -= dz * j.mass * mag;

                j.vx += dx * i.mass * mag;
                j.vy += dy * i.mass * mag;
                j.vz += dz * i.mass * mag;
            }
        }

        foreach(Body i; bodies)
        {
            i.x += dt * i.vx;
            i.y += dt * i.vy;
            i.z += dt * i.vz;
        }
    }

    double energy()
    {
        double dx, dy, dz, distance, e = 0.0;

        foreach(int idx, Body i; bodies)
        {
            e += 0.5 * i.mass *
                 (i.vx * i.vx
                + i.vy * i.vy 
                + i.vz * i.vz);

            foreach(Body j; bodies[idx + 1 .. length])
            {
                dx = i.x - j.x;
                dy = i.y - j.y;
                dz = i.z - j.z;

                distance = sqrt(dx*dx + dy*dy + dz*dz);
                e -= (i.mass * j.mass) / distance;
            }
        }

        return e;
    }
}

class System
{
private:
    const double PI = 3.141592653589793;
    const double SOLAR_MASS = 4 * PI * PI;
    const double DAYS_PER_YEAR = 365.24;

protected:
    class Body
    {
        double x = 0.0, y = 0.0, z = 0.0, vx = 0.0, vy = 0.0, vz = 0.0, mass = 0.0;

        void offsetMomentum(double px, double py, double pz)
        {
            vx = -px / SOLAR_MASS;
            vy = -py / SOLAR_MASS;
            vz = -pz / SOLAR_MASS;
        }
    }
    Body[] bodies;

public:
    this()
    {
        bodies ~= sun();
        bodies ~= jupiter();
        bodies ~= saturn();
        bodies ~= uranus();
        bodies ~= neptune();
    }

    Body sun()
    {
        Body p = new Body;
        p.mass = SOLAR_MASS;
        return p;
    }

    Body jupiter()
    {
        Body p = new Body;
        p.x = 4.84143144246472090e+00;
        p.y = -1.16032004402742839e+00;
        p.z = -1.03622044471123109e-01;
        p.vx = 1.66007664274403694e-03 * DAYS_PER_YEAR;
        p.vy = 7.69901118419740425e-03 * DAYS_PER_YEAR;
        p.vz = -6.90460016972063023e-05 * DAYS_PER_YEAR;
        p.mass = 9.54791938424326609e-04 * SOLAR_MASS;
        return p;
     }

    Body saturn()
    {
        Body p = new Body;
        p.x = 8.34336671824457987e+00;
        p.y = 4.12479856412430479e+00;
        p.z = -4.03523417114321381e-01;
        p.vx = -2.76742510726862411e-03 * DAYS_PER_YEAR;
        p.vy = 4.99852801234917238e-03 * DAYS_PER_YEAR;
        p.vz = 2.30417297573763929e-05 * DAYS_PER_YEAR;
        p.mass = 2.85885980666130812e-04 * SOLAR_MASS;
        return p;
    }

    Body uranus()
    {
        Body p = new Body;
        p.x = 1.28943695621391310e+01;
        p.y = -1.51111514016986312e+01;
        p.z = -2.23307578892655734e-01;
        p.vx = 2.96460137564761618e-03 * DAYS_PER_YEAR;
        p.vy = 2.37847173959480950e-03 * DAYS_PER_YEAR;
        p.vz = -2.96589568540237556e-05 * DAYS_PER_YEAR;
        p.mass = 4.36624404335156298e-05 * SOLAR_MASS;
        return p;
    }

    Body neptune()
    {
        Body p = new Body;
        p.x = 1.53796971148509165e+01;
        p.y = -2.59193146099879641e+01;
        p.z = 1.79258772950371181e-01;
        p.vx = 2.68067772490389322e-03 * DAYS_PER_YEAR;
        p.vy = 1.62824170038242295e-03 * DAYS_PER_YEAR;
        p.vz = -9.51592254519715870e-05 * DAYS_PER_YEAR;
        p.mass = 5.15138902046611451e-05 * SOLAR_MASS;
        return p;
    }
}
