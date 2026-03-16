// week04-5.cpp SOIT106_BASE_005
#include <stdio.h>

int main()
{
    int N;
    scanf("%d", &N);
    int ana = 0;
    for (int i=1; i<=N; i++) {
        if (N%i==0) ana++;
    }
    printf("%d\n", ana);
}
