package com.print_all_even_numbers;

import static org.junit.jupiter.api.Assertions.*;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.Test;

public class EvenThreadTest {

    @Test
    void testEvenThreadRunsSuccessfully() {
        List<Integer> nums = Arrays.asList(10, 15, 20);
        FindEvenNumber evenFinder = new FindEvenNumber(nums);
        EvenThread evenThread = new EvenThread(evenFinder);

        // Run the thread directly (synchronously) to test logic
        evenThread.run();

        List<Integer> expected = Arrays.asList(10, 20);
        assertEquals(expected, evenFinder.findEven(), "Thread should correctly find even numbers");
    }
}
