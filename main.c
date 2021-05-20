#include "libasm.h"
#include <stdio.h>

// gcc -I include main.c libasm.a -m32 -o out

int main(void)
{
    char buffer[0x100] = "hello";

    ft_strncat(buffer, " world !\n", 2);

    printf("%s\n", buffer);

    return (0);
}