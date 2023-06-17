#!/usr/bin/env bash

set -e

c="\033[0;35m" # Blue
g="\033[0m"    # Green
r="\033[0m"    # Reset to default
b="\e[1m"      # Bold

tmux() {
    echo -e ""
    echo -e "${b}WINDOW${r}"
    echo -e ""

    echo -e "${c}C-b c${r}     - ${g}Create a new window${r}"
    echo -e "${c}C-b ,${r}     - ${g}Rename the current window${r}"
    echo -e "${c}C-b w${r}     - ${g}List all windows${r}"
    echo -e "${c}C-b [0-9]${r} - ${g}Swtich to window number${r}"
    echo -e "${c}C-b &${r}     - ${g}Kill the current window${r}"

    echo -e ""
    echo -e "${b}PANE${r}"
    echo -e ""

    echo -e "${c}C-b %${r}       - ${g}Split the current pane vertically${r}"
    echo -e "${c}C-b \"${r}       - ${g}Split the current pane horizontally${r}"
    echo -e "${c}C-b q${r}       - ${g}Show pane numbers, press number to go to that pane${r}"
    echo -e "${c}C-b x${r}       - ${g}Kill the current pane${r}"
    echo -e "${c}C-b [Space]${r} - ${g}Toggle through layout presets${r}"

}

ledger() {
    echo -e ""
    echo -e "${b}BALANCE${r}"
    echo -e ""

    echo -e "${g}# Balanse sheet in collapsed display${r}"
    echo -e "${c}ledger -f joint.ledger bal --collapse${r}"

    echo -e "${g}# Balance report around the city tag${r}"
    echo -e "${c}ledger -f joint.ledger bal Expense --pivot "City"${r}"

    echo -e "${g}# Balance report of vegetable spending sorted by price${r}"
    echo -e "${c}ledger -f joint.ledger bal veg --sort \"amount\"${r}"

    echo -e ""
    echo -e "${b}REGISTER${r}"
    echo -e ""

    echo -e "${g}# Liability report for each month${r}"
    echo -e "${c}ledger -f joint.ledger reg Liability --monthly${r}"

    echo -e "${g}# Expenses for every month${r}"
    echo -e "${c}ledger -f joint.ledger reg expense --period \"every month\" --collapse${r}"

    echo -e "${g}# Expenses for every week${r}"
    echo -e "${c}ledger -f joint.ledger reg expense --period \"every week\" --collapse${r}"

    echo -e "${g}# All payee spending for the specified period${r}"
    echo -e "${c}ledger -f joint.ledger reg food --by-payee --period \"mar\" --collapse${r}"

    echo -e "${g}# All transactions to a payee on a specific day${r}"
    echo -e "${c}ledger -f joint.ledger reg --begin 2023/02/11 --end 2023/02/12 @Costco${r}"
    }

vi() {
    echo -e ""
    echo -e "${b}RANGES${r}"
    echo -e ""

    echo -e "${c}:.,\$d${r} - ${g}delete from current to EOF${r}"

    echo -e ""
    echo -e "${b}CHANGE${r}"
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
    echo -e "${b}YANK${r}"
    echo -e ""

    echo -e "${c}yaf${r}  - ${g}yank current function${r}"
    echo -e "${c}yap${r}  - ${g}yank around current paragraph${r}"
    echo -e "${c}yip${r}  - ${g}yank current paragraph${r}"
    echo -e "${c}yif${r}  - ${g}yank current inner function${r}"

    echo -e ""
    echo -e "${b}DELETE${r}"
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
}

if [[ $1 == "vi" ]]; then
    vi
fi

if [[ $1 == "ledger" ]]; then
    ledger
fi

if [[ $1 == "tmux" ]]; then
    ledger
fi

exit 1
