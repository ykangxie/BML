#include "moveCars.h"
int* moveCars(int *x, int *y, int *car, int *n, int *result) {
	for (int i = 0; i < *n ; i++) {
		result[i*3] = x[i];
		result[i*3+1] = y[i];
		result[i*3+2] = car[i];
	}
    return result;
}
