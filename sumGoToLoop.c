#include <stdio.h>
int sumGoToLoop(int a, int b);

int main()
{
    printf("\n");
    printf("Sum from GoTo Loop: %d\n",sumGoToLoop(3,10));
    return 0;
}

int sumGoToLoop(int min, int max)
{
    int sum = 0;
    CALCULATE_SUM:
    if(min <= max)
    {
        sum += min;
        min++;
        goto CALCULATE_SUM;
    }
    return sum;
}
