#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

[[ -z $SNIPPETS ]] && echo "SNIPPETS env var not set" && exit 1

ledgersnip() {
    source "$SNIPPETS/ledger-food.sh"
    case $2 in
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
    *)
        echo "You did not enter a number between 1 and 3."
        ;;
    esac
}

csnip() {
    source "$SNIPPETS/c-vanilla.sh"
    if [[ "$2" == "iter" ]]; then
        iter "${@:3}"
    fi
    if [[ "$2" == "malloc" ]]; then
        malloc "${@:3}"
    fi
}

cppsnip() {
    source "$SNIPPETS/cpp-vanilla.sh"
    if [[ "$2" == "iter" ]]; then
        iter "${@:3}"
    fi
    if [[ "$2" == "range" ]]; then
        range "${@:3}"
    fi
}

gsnip() {
    source "$SNIPPETS/go-vanilla.sh"
    if [[ "$2" == "range" ]]; then
        range "${@:3}"
    fi
    if [[ "$2" == "err" ]]; then
        err "${@:3}"
    fi
    if [[ "$2" == "fn" ]]; then
        fn "${@:3}"
    fi
    if [[ "$2" == "mt" ]]; then
        mt "${@:3}"
    fi
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

if [[ "$1" == ledger ]]; then
    ledgersnip "$@"
fi

exit 0
