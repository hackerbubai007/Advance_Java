package com.print_all_even_numbers;

import static org.junit.jupiter.api.Assertions.*;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class FindEvenNumberTest {

    private FindEvenNumber evenFinder;

    @BeforeEach
    void setup() {
        evenFinder = new FindEvenNumber(Arrays.asList(1, 2, 3, 4, 5, 6));
    }

    @Test
    void testFindEvenNumbers_ReturnsCorrectEvens() {
        List<Integer> expected = Arrays.asList(2, 4, 6);
        List<Integer> actual = evenFinder.findEven();
        assertEquals(expected, actual, "Should return only even numbers");
    }

    @Test
    void testFindEvenNumbers_WhenNoEvens_ReturnsEmptyList() {
        FindEvenNumber noEvens = new FindEvenNumber(Arrays.asList(1, 3, 5, 7));
        assertEquals(Collections.emptyList(), noEvens.findEven());
    }

    @Test
    void testFindEvenNumbers_WithEmptyList_ReturnsEmptyList() {
        FindEvenNumber emptyList = new FindEvenNumber(Collections.emptyList());
        assertTrue(emptyList.findEven().isEmpty());
    }
}
