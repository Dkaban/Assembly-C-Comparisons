#include <stdio.h>
int sumDoWhileLoop(int a, int b);

int main()
{
    printf("\n");
    printf("Sum from Do While Loop: %d\n", sumDoWhileLoop(3,10));
    return 0;
}

int sumDoWhileLoop(int min, int max)
{
    int sum = 0;
    do {
        sum += min;
        min++;
    }while(min <= max);
    return sum;
}
