#include <stdio.h>

int main()
{
    int start, length, i;

    printf("Enter Starting Block: ");
    scanf("%d", &start);

    printf("Enter File Length: ");
    scanf("%d", &length);

    printf("Allocated Blocks:\n");

    for(i = 0; i < length; i++)
    {
        printf("%d ", start + i);
    }

    printf("\n");

    return 0;
}
