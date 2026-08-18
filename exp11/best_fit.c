#include <stdio.h>

int main()
{
    int block[20], process[20];
    int n, m, i, j, best;

    printf("Enter Number of Blocks: ");
    scanf("%d", &n);

    printf("Enter Block Sizes:\n");
    for(i = 0; i < n; i++)
        scanf("%d", &block[i]);

    printf("Enter Number of Processes: ");
    scanf("%d", &m);

    printf("Enter Process Sizes:\n");
    for(i = 0; i < m; i++)
        scanf("%d", &process[i]);

    for(i = 0; i < m; i++)
    {
        best = -1;

        for(j = 0; j < n; j++)
        {
            if(block[j] >= process[i])
            {
                if(best == -1 || block[j] < block[best])
                    best = j;
            }
        }

        if(best != -1)
        {
            printf("Process %d -> Block %d\n", i + 1, best + 1);
            block[best] -= process[i];
        }
        else
        {
            printf("Process %d -> Not Allocated\n", i + 1);
        }
    }

    return 0;
}
