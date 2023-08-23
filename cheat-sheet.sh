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

    echo -e "${purple}C-b o${reset}       - ${reset}Go to the next pane${reset}"
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
cat << END

${boldon}RANGES${boldoff}

${purple}:%! filter${reset}           - ${reset}filter whole file${reset}
${purple}:r !date${reset}             - ${reset}insert external command output${reset}
${purple}:.,\$d${reset}                - ${reset}delete from current to EOF${reset}
${purple}:help ranges${reset}         - ${reset}help ranges${reset}
${purple}:5,10 w /tmp/file${reset}    - ${reset}copy lines to new file${reset}
${purple}:5,10 w >> /tmp/file${reset} - ${reset}append lines to new file${reset}
${purple}:%normal i//${reset} - ${reset}comment range of lines${reset}
${purple}.,.+5 s/^/// ${reset} - ${reset}comment range of lines${reset}

${boldon}BUFFER${boldoff}

${purple}:bd${reset} - ${reset}close current buffer${reset}
${purple}:ls${reset} - ${reset}ls all open buffers${reset}

${boldon}CHANGE${boldoff}

${purple}gCtl-a${reset} - ${reset}increment all highlighted numbers${reset}
${purple}3Ctl-a${reset} - ${reset}increment by 3${reset}
${purple}gI${reset}     - ${reset}insert start on line${reset}
${purple}U${reset}      - ${reset}undo all changes to the line${reset}
${purple}=ap${reset}    - ${reset}aline a paragraph${reset}
${purple}!ip${reset}    - ${reset}send the current paragraph to shell command${reset}
${purple}>ip${reset}    - ${reset}indent the current paragraph${reset}
${purple}>3j${reset}    - ${reset}indent three lines${reset}
${purple}<ip${reset}    - ${reset}dedent the current paragraph${reset}
${purple}ea ${reset}    - ${reset}append to current word${reset}
${purple}cw ${reset}    - ${reset}change to end of current word${reset}
${purple}ci"${reset}    - ${reset}delete quote content in line${reset}
${purple}ca"${reset}    - ${reset}delete quote content AND quotes${reset}
${purple}ciw${reset}    - ${reset}change current word${reset}
${purple}caw${reset}    - ${reset}change around current word${reset}
${purple}gqip${reset}   - ${reset}wrap the current paragraph${reset}
${purple}gqap${reset}   - ${reset}wrap around the current paragraph${reset}

${boldon}YANK${boldoff}

${purple}yaf${reset} - ${reset}yank current function${reset}
${purple}yap${reset} - ${reset}yank around current paragraph${reset}
${purple}yiw${reset} - ${reset}yank current word${reset}
${purple}yip${reset} - ${reset}yank current paragraph${reset}
${purple}yif${reset} - ${reset}yank current inner function${reset}

${boldon}DELETE${boldoff}

${purple}dap${reset} - ${reset}delete around current paragraph${reset}
${purple}dap${reset} - ${reset}delete around current paragraph${reset}
${purple}dip${reset} - ${reset}delete current paragraph${reset}
${purple}diw${reset} - ${reset}delete current word${reset}
${purple}daw${reset} - ${reset}delete around current word${reset}
${purple}daW${reset} - ${reset}delete around current larger word${reset}
${purple}dw ${reset} - ${reset}delete to beginning of next word${reset}
${purple}daf${reset} - ${reset}delete current function${reset}
${purple}dif${reset} - ${reset}delete current inner function${reset}

END
}

if [[ $1 == "vi" ]]; then
    echo -e "$(vi)"
fi

if [[ $1 == "ledger" ]]; then
    ledger
fi

if [[ $1 == "tmux" ]]; then
    tmux
fi

if [[ $1 == "rust" ]]; then
    rust
fi

exit 1
