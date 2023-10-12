#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

double calculatePi(int n) {
    clock_t start = clock();
    double numerator = 4.0;
    double denominator = 1.0;
    double operation = 1.0;
    double pi = 0.0;

    for (int i = 0; i < n; i++) {
        pi += operation * (numerator / denominator);
        denominator += 2;
        operation *= -1;
    }

    clock_t end = clock();
    double elapsed = (double)(end - start) * 1000 / CLOCKS_PER_SEC;
    printf("Elapsed time: %fms\n", elapsed);

    return pi;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        return 0;
    }

    int n = atoi(argv[1]);
    if (n <= 0) {
        return 0;
    }

    printf("Default Pi value: %f\n", M_PI);

    double pi = calculatePi(n);
    printf("pi value calculated locally: %f\n", pi);

    return 0;
}

