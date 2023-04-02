/*
** EPITECH PROJECT, 2021
** my_iochar.h
** File description:
** IO Char funs prototypes
*/

#ifndef MY_IOCHAR_H
    #define MY_IOCHAR_H
    #include <stdint.h>
    #include <stdbool.h>

    void my_putchar(char c);
    void my_putchar_err(char c);
    bool my_dputchar(uint8_t fileno, char c);
#endif
