#include <stdio.h>

// Функция для вычисления факториала числа
unsigned long long factorial(unsigned int n) {
    // Базовый случай: факториал 0 равен 1
    if (n == 0) {
        return 1;
    }
    // Рекурсивный случай: вычисляем факториал числа n как n * (n - 1)!
    return n * factorial(n - 1);
}

int main() {
    unsigned int number;

    // Ввод числа от пользователя
    printf("Введите число для вычисления его факториала: ");
    scanf("%u", &number);

    // Проверка на отрицательное число
    if (number < 0) {
        printf("Факториал отрицательного числа не определен.\n");
    } else {
        // Вызов функции для вычисления факториала и вывод результата
        printf("Факториал числа %u равен %llu\n", number, factorial(number));
    }

    return 0;
}