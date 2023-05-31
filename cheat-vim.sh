#!/usr/bin/env bash

c="\033[0;35m" # Blue
g="\033[0m" # Green
r="\033[0m"    # Reset to default

echo -e ""
echo -e "DELETE"
echo -e ""

echo -e "${c}:.,\$d${r}  - ${g}delete from current to EOF${r}"

echo -e ""
echo -e "CHANGE"
echo -e ""

echo -e "${c}!ip${r}  - ${g}send the current paragraph to shell command${r}"
echo -e "${c}>ip${r}  - ${g}indent the current paragraph${r}"
echo -e "${c}<ip${r}  - ${g}dedent the current paragraph${r}"
echo -e "${c}ea ${r}  - ${g}append to current word${r}"
echo -e "${c}cw ${r}  - ${g}change to end of current word${r}"
echo -e "${c}ciw${r}  - ${g}change current word${r}"
echo -e "${c}caw${r}  - ${g}change around current word${r}"
echo -e "${c}gqip${r} - ${g}wrap the current paragraph${r}"
echo -e "${c}gqap${r} - ${g}wrap around the current paragraph${r}"

echo -e ""
echo -e "YANK"
echo -e ""

echo -e "${c}yaf${r}  - ${g}yank current function${r}"
echo -e "${c}yap${r}  - ${g}yank around current paragraph${r}"
echo -e "${c}yip${r}  - ${g}yank current paragraph${r}"
echo -e "${c}yif${r}  - ${g}yank current inner function${r}"

echo -e ""
echo -e "DELETE"
echo -e ""

echo -e "${c}dap${r}  - ${g}delete around current paragraph${r}"
echo -e "${c}dap${r}  - ${g}delete around current paragraph${r}"
echo -e "${c}dip${r}  - ${g}delete current paragraph${r}"
echo -e "${c}diw${r}  - ${g}delete current word${r}"
echo -e "${c}daw${r}  - ${g}delete around current word${r}"
echo -e "${c}daW${r}  - ${g}delete around current larger word${r}"
echo -e "${c}dw ${r}  - ${g}delete to beginning of next word${r}"
echo -e "${c}daf${r}  - ${g}delete current function${r}"
echo -e "${c}dif${r}  - ${g}delete current inner function${r}"

