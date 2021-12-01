# shellcheck shell=sh disable=SC3043

____font_test_run() {
    local _source_path
    _source_path="$( cd "$( dirname "$0" )" && pwd )"
    local font_dir
    if test "$(uname)" = "Darwin" ; then
        # MacOS
        font_dir="$HOME/Library/Fonts"
    else
        # Linux
        font_dir="$HOME/.local/share/fonts"
        mkdir -p "$font_dir"
    fi
    cp "$_source_path/MonacoForPowerline.ttf" "$font_dir/"
    if which fc-cache >/dev/null 2>&1 ; then
        echo "Resetting font cache, this may take a moment..."
        fc-cache -f "$font_dir"
    fi
    echo "Powerline fonts installed to $font_dir"
}
____font_test_run