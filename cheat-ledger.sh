#!/usr/bin/env bash
#
# Description and purpose of script.

c="\033[0;35m" # Blue
g="\033[0m" # Green
r="\033[0m"    # Reset to default

echo -e ""
echo -e "BALANCE"
echo -e ""

echo -e "${g}# Balanse sheet in collapsed display${r}"
echo -e "${c}ledger -f joint.ledger bal --collapse${r}"

echo -e "${g}# Balance report around the city tag${r}"
echo -e "${c}ledger -f joint.ledger bal Expense --pivot "City"${r}"

echo -e "${g}# Balance report of vegetable spending sorted by price${r}"
echo -e "${c}ledger -f joint.ledger bal veg --sort \"amount\"${r}"

echo -e ""
echo -e "REGISTER"
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

exit 0
