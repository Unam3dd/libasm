#pragma once
#include <sys/types.h>
#include <stdint.h>

// ft_strcpy - copy string
extern char *ft_strcpy(char *dst, char *src);

// ft_strncpy - copy string with n byte
extern char *ft_strncpy(char *dst, char *src, size_t n);

// ft_strlen - get length of string
extern size_t ft_strlen(const char *str);

// ft_strcmp - compare two string - similar at strcmp
extern int ft_strcmp(const char *str1, const char *str2);

// ft_strequ - compare two string - return 1 if equal, else 0 if not equal
extern uint8_t ft_strequ(const char *str1, const char *str2);

// ft_bzero - set zero memory
extern void ft_bzero(void *s, size_t n);

// ft_putchar - print char
extern void ft_putchar(char c);

// ft_putstr - print string
extern void ft_putstr(char *str);

// ft_atoi - convert string number in to int number
extern int ft_atoi(char *str);

// ft_strcat - append char in string
extern char *ft_strcat(char *dst, char *src);

// ft_strncat - append char in string with n byte
extern char *ft_strncat(char *dst, char *src, size_t n);