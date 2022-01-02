//
//  main.swift
//  Error_Handling
//
//  Created by M_2022814 on 12/14/21.
//

import Foundation

// MARK: - Error Handling
// Error Handling is the process of responding to and recovering from error conditions in your program

// In Swift errors are represented by values of types that conform to the Error protocol.
// Enums are good for modeling a group of related errors

enum VendingMachineError: Error {
    case invalidSelection, insufficientFunds (coinsNeeded: Int), outOfStock
}

// Throwing an error lets you indicate that something unexpected happened and the normal flow of execution can't continue. Use "throw" keyword
// "Throws" keyword signifies that a method can throw an error
// Example of how to use a throw statement

class VendingMachine {
    
    var itemCount: Int = 2
    
    func validateOrder() throws {
        
        guard itemCount > 0 else {
            throw VendingMachineError.outOfStock
        }
    }

    
}

// MARK: - Error Handling Using Do-Catch
// Use Do-Catch Statement to handle errors by running a block of code

/*
 // Format for Do-Catch Statement:
 
 do {
    try (expression)
    (statements)
 } catch (pattern1) {
    (statements)
 } catch (pattern2) where (condition) {
    (statements)
 } catch (pattern3),(pattern4) where (condition) {
    (statements)
 } catch {
    (statements)
 }
 */
