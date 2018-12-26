#include <stdio.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}


void quick_sort_recursive (int arr[], int start, int end) {
    if (start >= end) {
        return;
    }
    int mid = arr[end];
    int left = start;
    int right = end - 1;

    while (left < right) {
        while (arr[left] < mid && left < right )
            left++;
        while (arr[right] >= mid && left < right )
            //right++
            right--;
        swap(&arr[left], &arr[right]);
    }
    if (arr[left] >= arr[end]) {
        swap(&arr[left], &arr[end]);
    } else {
        left++;
    }

    if (left) {
        quick_sort_recursive (arr, start, left - 1);
    }
    // right + 1
    quick_sort_recursive(arr, left + 1, end);
}

void quick_sort(int arr[], int len) {
    quick_sort_recursive(arr, 0, len - 1);
}

int main(int argc, char const *argv[])
{
    int arr[] = { 22, 34, 3, 32, 82, 55, 89, 50, 37, 5, 64, 35, 9, 70 };
    int len = sizeof(arr) / sizeof(int);

    quick_sort(arr, len);
    for (int i = 0; i < len; i++ ){
        printf("%d ", arr[i]);
    }
    return 0;
}
