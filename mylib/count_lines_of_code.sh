#!/bin/bash
echo -n -e "Number of lines of code, including .c and .h files:\e[92m" && find . \( -name "*.c" -o -name "*.h" \) -type f | xargs wc -l | grep "total" | rev | cut -c 6- | rev
echo -n -e "\e[0m-> \e[92m"
tree . | grep "directories"
echo -e "\e[0mType \e[92mtree .\e[0m to display this folder arborescence."

# * ... I'm really sorry for this. Pray the Bash God so that he may grant us his mercy.
