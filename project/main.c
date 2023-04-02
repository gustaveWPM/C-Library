/*
** EPITECH PROJECT, 2021
** main.c
** File description:
** Entry point
*/

#include "my_optflags.h"
#include "my_iostring.h"
#include "my_char.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    optflags_t *opt = my_optflags_builder(argc, argv, false, true);
    char *test = NULL;

    if (my_includes_flag(opt, "--dump"))
        my_putstr("--dump!\n");
    my_optflags_destroy(&opt);
    if (!isatty(0))
        test = (char *) my_tokenize_file_redirected(FLATTEN);
    if (test) {
        printf("%s", test);
        free(test);
    }
    return 0;
}
