import Foundation

// Recursive function to calculate power
func powerRecursive(base: Int, exponent: Int) -> Int {
    if exponent == 0 {
        return 1
    } else {
        return base * powerRecursive(base: base, exponent: exponent - 1)
    }
}

// Iterative function to calculate power
func powerIterative(base: Int, exponent: Int) -> Int {
    var result = 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}

func powerCalculator() {
    print("Power Calculator")
    
    // Get base from user
    print("Enter the base number:")
    guard let baseInput = readLine(), let base = Int(baseInput) else {
        print("Invalid input. Please enter an integer for the base.")
        return
    }
    
    // Get exponent from user
    print("Enter the exponent:")
    guard let exponentInput = readLine(), let exponent = Int(exponentInput) else {
        print("Invalid input. Please enter an integer for the exponent.")
        return
    }
    
    // Calculate power using both methods
    let resultRecursive = powerRecursive(base: base, exponent: exponent)
    let resultIterative = powerIterative(base: base, exponent: exponent)
    
    // Display results
    print("Result using recursion: \(base)^\(exponent) = \(resultRecursive)")
    print("Result using iteration: \(base)^\(exponent) = \(resultIterative)")
}

// Start the power calculator program
powerCalculator()
