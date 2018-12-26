#include <stdio.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void bubble_sort(int arr[], int len) {
    int i, j, temp;
    for (i = 0; i < len - 1; i++)
        for (j = 0; j < len - 1 - i; j++)
            if (arr[j] > arr[j + 1]) {
                swap(&arr[j], &arr[j+1]);
                // temp = arr[j];
                // arr[j] = arr[j + 1];
                // arr[j + 1] = temp;
            }
}

void selection_sort2(int arr[], int len) {
    int i,j;
    for (i = 0 ; i < len - 1 ; i++) {
        int min = i;
        for (j = i + 1; j < len; j++)     //走訪未排序的元素
            if (arr[j] < arr[min])    //找到目前最小值
                min = j;    //紀錄最小值
           swap(&arr[min], &arr[i]);    //做交換
    }
}

void selection_sort(int arr[], int len) {
    for (int i = 0; i < len-1; i++) 
        for (int j = i+1; j< len-1; j++)
            if (arr[i] > arr[j]) {
                swap(&arr[i], &arr[j]);
            }
}

void display() {
    int arr[] = { 22, 34, 3, 32, 82, 55, 89, 50, 37, 5, 64, 35, 9, 70 };
    int len = (int) sizeof(arr) / sizeof(*arr);
    bubble_sort(arr, len);
    // selection_sort(arr, len);
    int i;
    for (i = 0; i < len; i++)
        printf("%d ", arr[i]);
}

int main() {
    display();
    return 0;
}