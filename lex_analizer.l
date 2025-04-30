%{
#include <stdio.h>
%}

%%
" "                         printf(" ");
\/\/.*                      printf("COMMENT");
i                           printf("intdcl");
f                           printf("floatdcl");
p                           printf("print");
=                           printf("assign");
\+                          printf("plus");
-                           printf("minus");
\*                          printf("multiply");
\/                          printf("divide");
[a-eg-hj-oq-z]              printf("id");
[1-9][0-9]*\.[0-9]*[1-9]    printf("fnum");
0\.[0-9]*[1-9]              printf("fnum");
0\.0                        printf("fnum");
[1-9][0-9]*                 printf("inum");
0                           printf("inum");
'\n'                        printf("\n");
%%