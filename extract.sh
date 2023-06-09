#!/usr/bin/env bash

ex() {
	file=$1
	[ -z "$file" ] && echo 'ex <compressed>' && return 1
	[ ! -f "$file" ] && echo 'Invalid file: `'$file'`' && return 1
	case $file in
	*.tar.gz) tar xzf $file ;;
	*.tar) tar xf $file ;;
	*.tgz) tar xzf $file ;;
	*.zip) unzip $file ;;
	*)
		echo 'Unknown suffix on file: `'$file'`'
		return 1
		;;
	esac
}

ex "$@"
