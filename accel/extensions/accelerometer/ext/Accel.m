#import "accel.h"

double gx,gy,gz;
Accel *accel;
@implementation Accel

-(void)start
{
	gx = gy = gz = 0;
	[[UIAccelerometer sharedAccelerometer] setUpdateInterval:0.025];
	[[UIAccelerometer sharedAccelerometer] setDelegate:self];
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
	gx = acceleration.x;
	gy = acceleration.y;
	gz = acceleration.z;
}

@end

void start(void) {
	static bool started = false;
	if(!started) {
		accel = [[Accel alloc] init];
		[accel start];
		started = true;
	}
}

void get_readings(double *x, double *y, double *z) {
	*x = gx;
	*y = gy;
	*z = gz;
}