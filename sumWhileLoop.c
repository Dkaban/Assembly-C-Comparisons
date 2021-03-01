#include <stdio.h>
int sumWhileLoop(int a, int b);

int main()
{
    printf("\n");
    printf("Sum from While Loop: %d\n", sumWhileLoop(3,10));
    return 0;
}

int sumWhileLoop(int min, int max)
{
    int sum = 0;
    while(min <= max)
    {
        sum += min;
        min++;
    }
    return sum;
}
