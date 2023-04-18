package pl.coderslab.finalproject;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    @Test
    void add() {
        Calculator calculator = new Calculator();
        int add = calculator.add(2, 3);
        assertEquals(5, add);
    }
}