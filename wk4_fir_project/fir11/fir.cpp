/*
	Filename: fir.cpp
		FIR lab wirtten for WES/CSE237C class at UCSD.

	INPUT:
		x: signal (chirp)

	OUTPUT:
		y: filtered output

*/

#include "fir.h"

void fir (
  data_t *y,
  data_t x
  )
{
	coef_t c[N] = {53, 0, -91, 0, 313, 500, 313, 0, -91, 0,53};
	// Write your code here
	static data_t collect_sig[N] = {0};

	for(int i= N - 1; i > 0; i--){
		collect_sig[i] = collect_sig[i - 1];
	}
	collect_sig[0] = x;

	int acc = 0;
	for(int i = 0; i < N; i++){
		acc += collect_sig[i] * c[i];
	}
	*y = acc;
}


