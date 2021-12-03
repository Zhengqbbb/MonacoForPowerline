# shellcheck shell=sh disable=SC3043

____font_install_run() {
    if [ -z "$(command -v git)" ];then
        printf "\033[0;31m[qb]: Error git is not installed\033[0m\n"
        return 1
    fi
    local font_dir
    local _source_path
    local REMOTE="${REMOTE:-github}"
    local G_USER="${G_USER:-zhengqbbb}"
    _source_path="$( cd "$(dirname "$0")" && pwd )"
    env git clone "https://${REMOTE}.com/${G_USER}/MonacoForPowerline.git" "$_source_path/MonacoForPowerline" || {
        printf "\033[0;31m[qb]: Error git clone of MonacoForPowerline repo failed\033[0m\n"
        return 1
    }
    if test "$(uname)" = "Darwin" ; then
        # MacOS
        font_dir="$HOME/Library/Fonts"
    else
        # Linux
        font_dir="$HOME/.local/share/fonts"
        mkdir -p "$font_dir"
    fi
    cp "$_source_path/MonacoForPowerline/MonacoForPowerline.ttf" "$font_dir/"
    if which fc-cache >/dev/null 2>&1 ; then
        printf "\033[0;33m[qb]: Resetting font cache, this may take a moment...\033[0m\n"
        fc-cache -f "$font_dir"
    fi
    printf "\033[1;32m[qb]: Powerline fonts installed to \033[4;33m$font_dir\033[0m\n"
}
____font_install_run