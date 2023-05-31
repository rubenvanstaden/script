#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

[[ -z $SNIPPETS ]] && echo "SNIPPETS env var not set" && exit 1

ledgersnip() {

    source "$SNIPPETS/ledger-entry.sh"
    source "$SNIPPETS/ledger-food.sh"
    source "$SNIPPETS/ledger-fruit.sh"
    source "$SNIPPETS/ledger-health.sh"
    source "$SNIPPETS/ledger-expense.sh"

    case $2 in
    "income")
        income "${@:3}"
        ;;
    "scotia")
        scotia "${@:3}"
        ;;
    "coffee")
        coffee "${@:3}"
        ;;
    "resto")
        resto "${@:3}"
        ;;
    "takeout")
        takeout "${@:3}"
        ;;
    "metro")
        metro "${@:3}"
        ;;
    "taxi")
        taxi "${@:3}"
        ;;
    "streaming")
        streaming "${@:3}"
        ;;
    "software")
        software "${@:3}"
        ;;
    "internet")
        internet "${@:3}"
        ;;
    "mobile")
        mobile "${@:3}"
        ;;
    "travel")
        travel "${@:3}"
        ;;
    "course")
        course "${@:3}"
        ;;
    "carrot")
        carrot "${@:3}"
        ;;
    "onion")
        onion "${@:3}"
        ;;
    "pepper")
        pepper "${@:3}"
        ;;
    "ginger")
        ginger "${@:3}"
        ;;
    "lettuce")
        lettuce "${@:3}"
        ;;
    "spinach")
        spinach "${@:3}"
        ;;
    "tomato")
        tomato "${@:3}"
        ;;
    "mushroom")
        mushroom "${@:3}"
        ;;
    "corn")
        corn "${@:3}"
        ;;
    "cucumber")
        cucumber "${@:3}"
        ;;
    "asparagus")
        asparagus "${@:3}"
        ;;
    "edamame")
        edamame "${@:3}"
        ;;
    "skin")
        skin "${@:3}"
        ;;
    "acupunture")
        acupunture "${@:3}"
        ;;
    "supplement")
        supplement "${@:3}"
        ;;
    "dental")
        dental "${@:3}"
        ;;
    "apple")
        apple "${@:3}"
        ;;
    "pinapple")
        pinapple "${@:3}"
        ;;
    "orange")
        orange "${@:3}"
        ;;
    "grape")
        grape "${@:3}"
        ;;
    "jackfruit")
        jackfruit "${@:3}"
        ;;
    "pear")
        pear "${@:3}"
        ;;
    "banana")
        banana "${@:3}"
        ;;
    "bubble")
        bubble "${@:3}"
        ;;
    *)
        echo "You did not enter a number between 1 and 3."
        ;;
    esac
}

shsnip() {
    source "$SNIPPETS/sh-vanilla.sh"
    if [[ "$2" == "match" ]]; then
        match "${@:3}"
    fi
}

csnip() {
    source "$SNIPPETS/c-vanilla.sh"
    case $2 in
      "iter")
        iter "${@:3}"
        ;;
      "malloc")
        malloc "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

cppsnip() {
    source "$SNIPPETS/cpp-vanilla.sh"
    case $2 in
      "iter")
        iter "${@:3}"
        ;;
      "range")
        range "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

gsnip() {
    source "$SNIPPETS/go-vanilla.sh"
    case $2 in
      "iter")
        iter "${@:3}"
        ;;
      "range")
        range "${@:3}"
        ;;
      "err")
        err "${@:3}"
        ;;
      "fn")
        fn "${@:3}"
        ;;
      "mt")
        mt "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

rsnip() {
    source "$SNIPPETS/rs-vanilla.sh"
    if [[ "$2" == "iflet" ]]; then
        iflet "${@:3}"
    fi
    if [[ "$2" == "match" ]]; then
        match "${@:3}"
    fi
    if [[ "$2" == "struct" ]]; then
        struct "${@:3}"
    fi
    if [[ "$2" == "fn" ]]; then
        fn "${@:3}"
    fi
    if [[ "$2" == "test" ]]; then
        test
    fi

    source "$SNIPPETS/rs-data-structure.sh"
    if [[ "$2" == "graph" ]]; then
        graph
    fi
}

if [[ "$1" == c ]]; then
    csnip "$@"
fi

if [[ "$1" == go ]]; then
    gsnip "$@"
fi

if [[ "$1" == rs ]]; then
    rsnip "$@"
fi

if [[ "$1" == sh ]]; then
    shsnip "$@"
fi

if [[ "$1" == ledger ]]; then
    ledgersnip "$@"
fi

exit 0
