#include <stdio.h>

// What will translate better to machine code
int sum(int length, int *array) {
    int result = 0;
    while (length > 0) {  // how much array left to read?
        result += *array; // read an element from the array
        array++;          // go to the next element
        length--;         // bookkeeping
    }
    return result;
}

// What you're used to writing
int sum2(int length, int *array) {
    int result = 0;
    for (int i = 0; i < length; i++) {
        result += array[i];
    }
    return 0;
}

int main(int argc, char **argv) {
    int array[] = { 2, 4, 6, 8, 10 };
    printf("%d\n", sum(5, array));
    return 0;
}
