#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>

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
    std::cout << "Elapsed time: " << elapsed << "ms" << std::endl;

    return pi;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        return 0;
    }

    int n = std::atoi(argv[1]);
    if (n <= 0) {
        return 0;
    }

    std::cout << "Default pi value: " << M_PI << std::endl;

    double pi = calculatePi(n);
    std::cout << "pi value calculated locally: " << pi << std::endl;

    return 0;
}

