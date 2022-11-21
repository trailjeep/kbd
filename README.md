# Keyboard Shortcut Cheat Sheets

Personal Keyboard Shortcuts repository for use with cheat.sh standalone install.

## Install

1. Install [chubin/cheat.sh](https://github.com/chubin/cheat.sh/blob/master/doc/standalone.md) standalone
2. Copy [kbd.py](kbd.py) to `$HOME/.cheat.sh/lib/adapter/`
3. Add to `$HOME/.cheat.sh/lib/config.py`
```
...
_CONFIG = {
    "adapters.active": [
        "tldr",
        "kbd",
...
    "routing.main": [
        ("", "cheat.sheets"),
        ("", "cheat"),
        ("", "tldr"),
        ("", "kbd"),
...
```
4. Initialize:
```
$HOME/.cheat.sh/ve/bin/python $HOME/.cheat.sh/lib/fetch.py fetch-all
```

## Update

1. Perform after any repo updates:
```
$HOME/.cheat.sh/ve/bin/python $HOME/.cheat.sh/lib/fetch.py update-all
```

## Usage

All cheatsheets for app including keyboard:
```
cht.sh {APP}
```

Only keyboard cheat sheet for app:
```
cht.sh kbd:{APP}
```

### Aliases / Functions

```
if $(command -v cht.sh >/dev/null 2>&1); then
    alias cht='cht.sh'
    kbd() {
        cht.sh kbd:"$1"
    }
    alias kbdl='find $HOME/.cheat.sh/upstream/keyboard/ -name "*.md" -printf "%f\n" | sed "s/.md//"' # awk 'BEGIN {FS="."};{print $1}'                
fi
```

## Organization

Mostly follows: [tldr-pages/tldr](https://github.com/tldr-pages/tldr)
```
└── pages
    ├── custom     (custom/redefined app shortcuts go here)
        └── APP1.md
    ├── common     (os agnostic app shortcuts go here)
        ├── APP2.md
        └── APP3.md
    ├── linux      (linux app shortcuts go here)
    ├── osx        (osx app shortcuts go here)
    ├── sunos      (sunos app shortcuts go here)
    ├── windows    (windows app shortcuts go here)
    └── android    (android app shortcuts go here - probably unused)
```

## Template

Mostly follows: [tldr-pages/tldr](https://github.com/tldr-pages/tldr)

Note: `☐☐` represents 2 spaces for GitHub newline.
```
# APP_NAME

> DESCRIPTION☐☐
> More information: <URL>.

## Optional Section
|Shortcut|Description|
|:--|:--|
|<kbd>KEY1</kbd>|FUNCTION|
|<kbd>SHIFT</kbd>+<kbd>ALT</kbd>+<kbd>KEY2</kbd>|FUNCTION|
|<kbd>1</kbd>-<kbd>9</kbd>|Range of functions (skip to chapter 1-9)

## Optional Section
|Shortcut|Description|
|:--|:--|
|<kbd>KEY3</kbd>|FUNCTION|
|<kbd>SHIFT</kbd>+<kbd>ALT</kbd>+<kbd>KEY4</kbd>|FUNCTION|
```
---
# APP_NAME

> DESCRIPTION  
> More information: <URL>.

## Optional Section
|Shortcut|Description|
|:--|:--|
|<kbd>KEY1</kbd>|FUNCTION|
|<kbd>SHIFT</kbd>+<kbd>ALT</kbd>+<kbd>KEY2</kbd>|FUNCTION|
|<kbd>1</kbd>-<kbd>9</kbd>|Range of functions (skip to chapter 1-9)

## Optional Section
|Shortcut|Description|
|:--|:--|
|<kbd>KEY3</kbd>|FUNCTION|
|<kbd>SHIFT</kbd>+<kbd>ALT</kbd>+<kbd>KEY4</kbd>|FUNCTION|
---


## Acknowledgments

- [chubin/cheat.sh](https://github.com/chubin/cheat.sh)
- [tldr-pages/tldr](https://github.com/tldr-pages/tldr)
