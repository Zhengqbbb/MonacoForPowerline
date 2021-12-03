# shellcheck shell=sh disable=SC3043

_REMOTE="${_REMOTE:-github}"
_G_USER="${_G_USER:-zhengqbbb}"
____font_install_run() {
    if [ -z "$(command -v git)" ];then
        printf "\033[0;31m[qb]: Error git is not installed\033[0m\n"
        return 1
    fi
    local _font_dir
    local _source_path
    _source_path="$( cd "$(dirname "$0")" && pwd )"
    env git clone "https://${_REMOTE}.com/${_G_USER}/MonacoForPowerline.git" "$_source_path/MonacoForPowerline" || {
        printf "\033[0;31m[qb]: Error git clone of MonacoForPowerline repo failed\033[0m\n"
        return 1
    }
    if test "$(uname)" = "Darwin" ; then
        # MacOS
        _font_dir="$HOME/Library/Fonts"
    else
        # Linux
        _font_dir="$HOME/.local/share/fonts"
        mkdir -p "$_font_dir"
    fi
    cp "$_source_path/MonacoForPowerline/MonacoForPowerline.ttf" "$_font_dir/"
    if which fc-cache >/dev/null 2>&1 ; then
        printf "\033[1;33m[qb]: Resetting font cache, this may take a moment...\033[0m\n"
        fc-cache -f "$_font_dir"
    fi
    printf "\033[1;32m[qb]: Monaco For Powerline fonts installed to \033[4;33m$_font_dir\033[0m\n"
}

____font_printf_settings() {
    printf "\n\033[1;32m%s\033[0m\n\n" "---- Now you need to manually set the terminal font ----"
    printf "\033[1;33m%s \033[32m%s\033[1;36m%s\033[0m\n" \
        "VSCode:" \
        "Editor \`setting.json\` add json item " \
        "\"terminal.integrated.fontFamily\": \"Monaco for Powerline\""
    printf "\033[1;33m%s \033[32m%s\033[1;36m%s\033[0m\n" \
        "iTerm2:" \
        "Use \`command + ,\` Find Profiles - Text - Font, And then choose: " \
        "\"Monaco for Powerline\""
    printf "\033[1;33m%s \033[32m%s\033[1;36m%s\033[0m\n" \
        "Mac Terminal:" \
        "Use \`command + ,\` And then find font, Choose: " \
        "\"Monaco for Powerline\""
    printf "\033[1;33m%s \033[32m%s\033[1;36m%s\033[0m\n" \
        "Ubuntu Terminal:" \
        "Use the right click to open the setting(P), Find text, And then choose: " \
        "\"Monaco for Powerline Bold\""
    printf "\n\033[1;36m%s\033[4;33m%s\033[0m\n" \
        "More settings: "\
        "https://github.com/Zhengqbbb/MonacoForPowerline/issues/1"
}

____font_install_run
____font_printf_settings