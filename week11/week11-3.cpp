/// week11-3.cpp
#include <stdio.h>
int main()
{
    int a[10] = {9,8,7,6,5,4,3,2,1,0}; ///開始陣列

    for (int k=0; k<10; k++) printf("%d ", a[k]);
    printf("\n"); ///這次改成k k k 的迴圈

    for (int i=0; i<10; i++) { /// 左手 選擇1個
        for (int j=i+1; j<10; j++) { ///右手
            if (a[i] > a[j]) { /// 左手 vs 右手
                int temp = a[i]; /// 大小不對就交換
                a[i] = a[j];
                a[j] = temp;
            }
        }
        ///排到一半印出來
        for (int k=0; k<10; k++) printf("%d ", a[k]);
        printf("\n"); ///這次改成k k k 的迴圈
    }
}
