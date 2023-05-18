#!/usr/bin/env bash

c="\033[0;35m" # Blue
g="\033[0m" # Green
r="\033[0m"    # Reset to default

echo -e ""
echo -e "WINDOW"
echo -e ""

# Print the text
echo -e "${c}C-b c${r}     - ${g}Create a new window${r}"
echo -e "${c}C-b ,${r}     - ${g}Rename the current window${r}"
echo -e "${c}C-b w${r}     - ${g}List all windows${r}"
echo -e "${c}C-b [0-9]${r} - ${g}Swtich to window number${r}"
echo -e "${c}C-b &${r}     - ${g}Kill the current window${r}"

echo -e ""
echo -e "PANE"
echo -e ""

echo -e "${c}C-b %${r}       - ${g}Split the current pane vertically${r}"
echo -e "${c}C-b \"${r}       - ${g}Split the current pane horizontally${r}"
echo -e "${c}C-b q${r}       - ${g}Show pane numbers, press number to go to that pane${r}"
echo -e "${c}C-b x${r}       - ${g}Kill the current pane${r}"
echo -e "${c}C-b [Space]${r} - ${g}Toggle through layout presets${r}"

exit 0
