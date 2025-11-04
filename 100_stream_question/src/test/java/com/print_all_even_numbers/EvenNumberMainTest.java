package com.print_all_even_numbers;

import static org.junit.jupiter.api.Assertions.*;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.junit.jupiter.api.Test;

public class EvenNumberMainTest {

    @Test
    void testMainMethodRunsWithoutError() {
        String simulatedInput = "3\n2\n3\n4\n"; // size=3; numbers=2,3,4
        InputStream sysInBackup = System.in; // backup System.in
        System.setIn(new ByteArrayInputStream(simulatedInput.getBytes()));

        assertDoesNotThrow(() -> EvenNumber.main(new String[]{}));

        System.setIn(sysInBackup); // restore
    }
}
