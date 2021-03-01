#include <stdio.h>
int main()
{
    int array[50];
    int i,j;
    int value = 5;
    int sum = 0;
    //Create the Array
    for(j=0;j<50;j++)
    {
        array[j] = value;
        value++;
    }
    //Calculate the Sum
    for(i=0;i<50;i+=25)
    {
        sum += array[i];
        sum += array[i + 1];
        sum += array[i + 2];
        sum += array[i + 3];
        sum += array[i + 4];
        sum += array[i + 5];
        sum += array[i + 6];
        sum += array[i + 7];
        sum += array[i + 8];
        sum += array[i + 9];
        sum += array[i + 10];
        sum += array[i + 11];
        sum += array[i + 12];
        sum += array[i + 13];
        sum += array[i + 14];
        sum += array[i + 15];
        sum += array[i + 16];
        sum += array[i + 17];
        sum += array[i + 18];
        sum += array[i + 19];
        sum += array[i + 20];
        sum += array[i + 21];
        sum += array[i + 22];
        sum += array[i + 23];
        sum += array[i + 24];
    }
    printf("Sum: %d",sum);
    return 0;
}
