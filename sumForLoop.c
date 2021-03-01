#include <stdio.h>
int sumForLoop(int a, int b);

int main()
{
    printf("\n");
    printf("Sum from For Loop: %d\n", sumForLoop(3,10));
    return 0;
}

int sumForLoop(int min, int max)
{
    int i, sum = 0;
    for(int i=min;i<=max;i++)
    {
        sum += i;
    }
    return sum;
}
