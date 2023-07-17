#!/usr/bin/env bash

set -e

. "$SK/color.sh"

colors

tmux() {
    echo -e ""
    echo -e "${boldon}WINDOW${boldoff}"
    echo -e ""

    echo -e "${purple}C-b c${reset}     - ${reset}Create a new window${reset}"
    echo -e "${purple}C-b ,${reset}     - ${reset}Rename the current window${reset}"
    echo -e "${purple}C-b w${reset}     - ${reset}List all windows${reset}"
    echo -e "${purple}C-b [0-9]${reset} - ${reset}Swtich to window number${reset}"
    echo -e "${purple}C-b &${reset}     - ${reset}Kill the current window${reset}"

    echo -e ""
    echo -e "${boldon}PANE${boldoff}"
    echo -e ""

    echo -e "${purple}C-b %${reset}       - ${reset}Split the current pane vertically${reset}"
    echo -e "${purple}C-b \"${reset}       - ${reset}Split the current pane horizontally${reset}"
    echo -e "${purple}C-b q${reset}       - ${reset}Show pane numbers, press number to go to that pane${reset}"
    echo -e "${purple}C-b x${reset}       - ${reset}Kill the current pane${reset}"
    echo -e "${purple}C-b [Space]${reset} - ${reset}Toggle through layout presets${reset}"

}

ledger() {
    echo -e ""
    echo -e "${boldon}BALANCE${boldoff}"
    echo -e ""

    echo -e "${reset}# List food spending for the month of June${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger bal food --period \"jun\"${reset}"

    echo -e "${reset}# List expenses only 2 levels deep${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger bal exp --period \"jun\" --depth 2${reset}"

    echo -e "${reset}# Balanse sheet in collapsed display${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger bal --collapse${reset}"

    echo -e "${reset}# Balance report around the city tag${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger bal Expense --pivot "City"${reset}"

    echo -e "${reset}# Balance report of vegetable spending sorted by price${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger bal veg --sort \"amount\"${reset}"

    echo -e ""
    echo -e "${boldon}REGISTER${boldoff}"
    echo -e ""

    echo -e "${reset}# Liability report for each month${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger reg Liability --monthly${reset}"

    echo -e "${reset}# Expenses for every month${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger reg expense --period \"every month\" --collapse${reset}"

    echo -e "${reset}# Expenses for every week${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger reg expense --period \"every week\" --collapse${reset}"

    echo -e "${reset}# All payee spending for the specified period${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger reg food --by-payee --period \"mar\" --collapse --sort \"amount\"${reset}"

    echo -e "${reset}# All transactions to a payee on a specific day${reset}"
    echo -e "${purple}ledger -f 2023/2023.ledger reg --begin 2023/02/11 --end 2023/02/12 @Costco${reset}"
    }

vi() {
    echo -e ""
    echo -e "${boldon}RANGES${boldoff}"
    echo -e ""

    echo -e "${c}:.,\$d${reset} - ${g}delete from current to EOF${reset}"

    echo -e ""
    echo -e "${boldon}CHANGE${boldoff}"
    echo -e ""

    echo -e "${purple}!ip${reset}  - ${reset}send the current paragraph to shell command${reset}"
    echo -e "${purple}>ip${reset}  - ${reset}indent the current paragraph${reset}"
    echo -e "${purple}<ip${reset}  - ${reset}dedent the current paragraph${reset}"
    echo -e "${purple}ea ${reset}  - ${reset}append to current word${reset}"
    echo -e "${purple}cw ${reset}  - ${reset}change to end of current word${reset}"
    echo -e "${purple}ciw${reset}  - ${reset}change current word${reset}"
    echo -e "${purple}caw${reset}  - ${reset}change around current word${reset}"
    echo -e "${purple}gqip${reset} - ${reset}wrap the current paragraph${reset}"
    echo -e "${purple}gqap${reset} - ${reset}wrap around the current paragraph${reset}"

    echo -e ""
    echo -e "${boldon}YANK${boldoff}"
    echo -e ""

    echo -e "${purple}yaf${reset}  - ${reset}yank current function${reset}"
    echo -e "${purple}yap${reset}  - ${reset}yank around current paragraph${reset}"
    echo -e "${purple}yip${reset}  - ${reset}yank current paragraph${reset}"
    echo -e "${purple}yif${reset}  - ${reset}yank current inner function${reset}"

    echo -e ""
    echo -e "${boldon}DELETE${boldoff}"
    echo -e ""

    echo -e "${purple}dap${reset}  - ${reset}delete around current paragraph${reset}"
    echo -e "${purple}dap${reset}  - ${reset}delete around current paragraph${reset}"
    echo -e "${purple}dip${reset}  - ${reset}delete current paragraph${reset}"
    echo -e "${purple}diw${reset}  - ${reset}delete current word${reset}"
    echo -e "${purple}daw${reset}  - ${reset}delete around current word${reset}"
    echo -e "${purple}daW${reset}  - ${reset}delete around current larger word${reset}"
    echo -e "${purple}dw ${reset}  - ${reset}delete to beginning of next word${reset}"
    echo -e "${purple}daf${reset}  - ${reset}delete current function${reset}"
    echo -e "${purple}dif${reset}  - ${reset}delete current inner function${reset}"
}

if [[ $1 == "vi" ]]; then
    vi
fi

if [[ $1 == "ledger" ]]; then
    ledger
fi

if [[ $1 == "tmux" ]]; then
    tmux
fi

exit 1
