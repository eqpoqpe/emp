#!/bin/bash

# emp
# Copyright (c) 2022 Ryan Martin
# deletes all of file in here (directory)

declare readonly working_dir=${PWD}
declare readonly _emp="rm -rf"
declare user_confirum

if [ -n "$1" ]; then
	if [ "$1" == "." ]; then
		read -p "emp: do you want to clear here? " -r user_confirum
		
		if [ "${user_confirum}" == "yes" ] || [ "${user_confirum}" == "y" ]; then
			${_emp} ./*
		fi
	elif [ -d "${working_dir}/${1}" ]; then
		read -p "emp: do you want to clear directory '${1}'? " -r user_confirum
		
		if [ "${user_confirum}" == "yes" ] || [ "${user_confirum}" == "y" ]; then
			${_emp} ${working_dir}/${1}/*
		fi
	else
		echo "emp: cannot access '${1}': No Found directory"
	fi
fi
