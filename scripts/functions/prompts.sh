#!/usr/bin/env bash

# prompts

calculate_bash_command() {

    local bash_command=$(
        history -w /dev/stdout |
            tail -n 1
    )
    echo "$(("${#bash_command}" + 2))"

}

# after prompt
get_preexec_message() {

    export IFS=$'\n'

    local date=$(date "+%H:%M:%S:${TRAP_DEBUG_TIME_START/*./}")
    local time_wrapper="$(prompt_element "${date}" 1 "${GC_43}")"
    local time_element="$(prompt_element "${date}" 0 "${GC_43}")"
    
    local output=(
        "${time_wrapper}"
        "${time_element}"
        "${time_wrapper}"
    )
    
    echo "${output[*]}"

}

# before prompt
get_precmd_message() {

    export IFS=$'\n'

    local time_elapsed="${TRAP_DEBUG_TIME_END} - ${TRAP_DEBUG_TIME_START}"
    local time_elapsed="$(printf "%.6f" "$(bc <<<"${time_elapsed}")")"
    local time_elapsed=$(convert_time "${time_elapsed}")
    local date=$(date "+%H:%M:%S:${TRAP_DEBUG_TIME_END/*./}")
    
    local time_wrapper="$(prompt_element "${date}" 1 "${GC_43}")"
    local time_element="$(prompt_element "${date}" 0 "${GC_43}")"
    
    local elapsed_wrapper="$(prompt_element "${time_elapsed}" 1 "${GC_43}")"
    local elapsed_element="$(prompt_element "${time_elapsed}" 0 "${GC_43}")"

    local output=(
        "${time_wrapper} ${elapsed_wrapper}"
        "${time_element} ${elapsed_element}"
        "${time_wrapper} ${elapsed_wrapper}"
    )

    echo "${output[*]}"

}

# wrap prompt element
prompt_element() {

    
    local color_wrapper="${3:-"${GC_47}"}"
    local color_element="${4:-"${GC_37}"}"
    local space="${color_wrapper}  ${GC_END}"

    if [[ "${2}" -eq 0 ]]; then
        echo "  ${color_element}${1}${GC_END}  "
    else
        echo "${space}$(repeat_string "${#1}")${space}"
    fi
    

}

# generate the PS1 prompt
get_shell_prompt_PS1() {

    export IFS=$'\n'
    
    local git_branch="$(get_current_branch)"
    local git_branch="${git_branch:-none}"
    
    local git_branch_wrapper="$(prompt_element "${git_branch}" 1 "${GC_44}")"
    local git_branch_element="$(prompt_element "${git_branch}" 0 "${GC_44}")"
    
    local directory_wrapper="$(prompt_element "${PWD}" 1 "${GC_44}")"
    local directory_element="$(prompt_element "${PWD}" 0 "${GC_44}")"
    
    local hostname_wrapper="$(prompt_element "${HOSTNAME}" 1 "${GC_45}")"
    local hostname_element="$(prompt_element "${HOSTNAME}" 0 "${GC_45}")"
    
    local user_wrapper="$(prompt_element "${USER}" 1 "${GC_46}")"
    local user_element="$(prompt_element "${USER}" 0 "${GC_46}")"

    
    local bash_wrapper="$(prompt_element "${BASH_VERSION}" 1 "${GC_047}")"
    local bash_element="$(prompt_element "${BASH_VERSION}" 0 "${GC_047}")"
    
    local tty_wrapper="$(prompt_element "${TTY_NAME}" 1 "${GC_47}")"
    local tty_element="$(prompt_element "${TTY_NAME}" 0 "${GC_47}")"
   
    local jobs_r="$(jobs -r | wc -l)"
    local jobs_r_wrapper="$(prompt_element "${jobs_r}" 1 "${GC_42}")"
    local jobs_r_element="$(prompt_element "${jobs_r}" 0 "${GC_42}")"

    local jobs_s="$(jobs -s | wc -l)"
    local jobs_s_wrapper="$(prompt_element "${jobs_s}" 1 "${GC_41}")"
    local jobs_s_element="$(prompt_element "${jobs_s}" 0 "${GC_41}")"

    local jobs_wrappers="${tty_wrapper} ${jobs_r_wrapper} ${jobs_s_wrapper}"
    local jobs_elements="${tty_element} ${jobs_r_element} ${jobs_s_element}"

    local output=(
        "${user_wrapper} ${hostname_wrapper} ${bash_wrapper}"
	"${user_element} ${hostname_element} ${bash_element}"
        "${user_wrapper} ${hostname_wrapper} ${bash_wrapper}"

        "${git_branch_wrapper} ${directory_wrapper} ${jobs_wrapper}"
        "${git_branch_element} ${directory_element} ${jobs_element}"
        "${git_branch_wrapper} ${directory_wrapper} ${jobs_wrapper}"
    )
    
    echo "\n${output[*]}"

}

# shell command separator
get_shell_separator_line() {

    local output line_length=$((${3:-"$(get_terminal_width)"} - ${2:-"0"}))
    local separator=${1:-"─"}

    for ((count = 0; count < line_length; count++)); do
        output+="${separator}"
    done

    echo "${output}"

}
