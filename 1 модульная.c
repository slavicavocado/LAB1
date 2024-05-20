// Файл: factorial.h
#ifndef FACTORIAL_H
#define FACTORIAL_H

// Прототип функции для вычисления факториала числа
unsigned long long factorial(unsigned int n);

#endif /* FACTORIAL_H */


// Файл: factorial.c
#include "factorial.h"

// Определение функции для вычисления факториала числа
unsigned long long factorial(unsigned int n) {
    // Базовый случай: факториал 0 равен 1
    if (n == 0) {
        return 1;
    }
    // Рекурсивный случай: вычисляем факториал числа n как n * (n - 1)!
    return n * factorial(n - 1);
}


// Файл: main.c
#include <stdio.h>
#include "factorial.h"

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
// Теперь функция для вычисления факториала находится в отдельном модуле (файле) factorial.c, а её прототип объявлен в заголовочном файле factorial.h. Это позволяет использовать функцию в других файлах, не раскрывая её определение. Файл main.c остался практически без изменений, за исключением подключения заголовочного файла factorial.h