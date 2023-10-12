package main

import (
	"fmt"
	"math"
	"os"
	"strconv"
	"time"
)

func calculatePi(n int) float64 {
	start := time.Now()
	numerator := 4.0
	denominator := 1.0
	operation := 1.0
	pi := 0.0

	for i := 0; i < n; i++ {
		pi += operation * (numerator / denominator)
		denominator += 2
		operation *= -1
	}

	elapsed := time.Since(start)
	fmt.Printf("Tiempo transcurrido: %vms\n", elapsed.Milliseconds())

	return pi
}

func main() {
	if len(os.Args) < 1 {
		return
	}

	n, err := strconv.Atoi(os.Args[1])
	if err != nil {
		return
	}

	fmt.Println("valor de pi default:", math.Pi)

	pi := calculatePi(n)
	fmt.Println("valor de pi calculado localmente:", pi)
}
