%module Accelerometer
%{
extern void get_readings(double *x, double *y, double *z);
extern void start(void);
%}
extern void start(void);
extern void get_readings(double *OUTPUT, double *OUTPUT, double *OUTPUT);