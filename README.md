# Keyboard Shortcut Cheat Sheets

Personal Keyboard Shortcuts repository for use with cheat.sh standalone install.

## Install

1. Install [chubin/cheat.sh](https://github.com/chubin/cheat.sh/blob/master/doc/standalone.md) standalone
2. Copy kbd.py [kbd.py](lib/adapter/kbd.py) to `$HOME/.cheat.sh/lib/adapter/`
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

Perform once to initialize:
```
$HOME/.cheat.sh/ve/bin/python $HOME/.cheat.sh/lib/fetch.py fetch-all
```
Perform after any repo updates:
```
$HOME/.cheat.sh/ve/bin/python $HOME/.cheat.sh/lib/fetch.py update-all
```
## Usage
```
cht.sh kbd:APP
```

## Organization

Mostly follows: [tldr-pages/tldr](https://github.com/tldr-pages/tldr)
```
└── pages
    ├── custom     (custom/redefined app shortcuts go here)
    ├── common     (os agnostic app shortcuts go here)
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
# CHEAT_NAME

> FULL_NAME☐☐
> DESCRIPTION☐☐
> More information: <URL>.

|Shortcut|Description|
|:--|:--|
|<kbd>KEY1</kbd>|FUNCTION|
|<kbd>SHIFT</kbd>+<kbd>ALT</kbd>+<kbd>KEY2</kbd>|FUNCTION|
```

## Acknowledgments

- [chubin/cheat.sh](https://github.com/chubin/cheat.sh)
- [tldr-pages/tldr](https://github.com/tldr-pages/tldr)
