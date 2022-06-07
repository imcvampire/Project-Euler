package main 

import (
	"math"
)

func isPrime(num int) bool {
	if num < 2 || num % 2 == 0 {
		return false 
	}

	for i := 3; i < int(math.Sqrt(float64(num))); i += 2 {
		if num % i == 0 {
			return false 
		}
	}

	return true
}

func main() {
	num := 600851475143
	largestPrime := 0

	for ; num % 2 == 0; {
		num = int(num / 2)
	}

	for ; num % 3 == 0; {
		num = (num / 3)
	}

	prime := 5
	max := int(math.Sqrt(float64(num))) + 1
	for ; prime < max; {
		for ; num % prime == 0; num = int(num / prime) {
			largestPrime = prime 
		}

		for ;; {
			prime += 6

			if isPrime(prime) {
				break 
			}
		}
	}

	println(largestPrime)
}
