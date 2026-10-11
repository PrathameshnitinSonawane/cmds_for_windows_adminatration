# vim

## What is Vim?

- **Vim** (Vi IMproved) is a highly configurable text editor
- Modal editor: different modes for different tasks
- Available on almost all Unix/Linux systems
- Keyboard-driven (no mouse required once mastered)
- Extensible via plugins and configuration (`.vimrc`)

## installation

- ubuntu (debian based)

```bash
# update the apt repositories
> sudo apt-get update

# install vim
> sudo apt-get install vim
```

- fedora/rocky (red hat based)

```bash

# update the yum repositories
> sudo yum update
> sudo dnf update

# install vim
> sudo yum install vim
> sudo dnf install vim

```

## Vim Modes

| Mode             | Purpose                                         |
| ---------------- | ----------------------------------------------- |
| **Normal**       | Default mode; navigate and manipulate text      |
| **Insert**       | Type/insert text (like a regular editor)        |
| **Visual**       | Select/highlight text for operations            |
| **Command-line** | Run commands (`:`), search (`/`), filters (`!`) |
| **Replace**      | Overwrite text instead of inserting             |

## Switching Between Modes

| Key      | Action                                 |
| -------- | -------------------------------------- |
| `Esc`    | Return to Normal mode (from any mode)  |
| `i`      | Enter Insert mode at cursor            |
| `I`      | Enter Insert mode at beginning of line |
| `a`      | Append after cursor                    |
| `A`      | Append at end of line                  |
| `o`      | Open new line below and enter Insert   |
| `O`      | Open new line above and enter Insert   |
| `R`      | Enter Replace mode                     |
| `v`      | Enter Visual mode (character-wise)     |
| `V`      | Enter Visual mode (line-wise)          |
| `Ctrl-v` | Enter Visual mode (block-wise)         |
| `:`      | Enter Command-line mode                |

## Navigation (Normal Mode)

### Basic Movement

| Key      | Action                                    |
| -------- | ----------------------------------------- |
| `h`      | Move left                                 |
| `j`      | Move down                                 |
| `k`      | Move up                                   |
| `l`      | Move right                                |
| `w`      | Jump to start of next word                |
| `b`      | Jump to start of previous word            |
| `e`      | Jump to end of word                       |
| `^`      | Jump to first non-blank character of line |
| `$`      | Jump to end of line                       |
| `gg`     | Jump to first line                        |
| `G`      | Jump to last line                         |
| `:n`     | Jump to line number `n`                   |
| `Ctrl-f` | Move forward one page                     |
| `Ctrl-b` | Move backward one page                    |
| `Ctrl-d` | Move down half page                       |
| `Ctrl-u` | Move up half page                         |

### Searching

| Key        | Action                                |
| ---------- | ------------------------------------- |
| `/pattern` | Search forward for `pattern`          |
| `?pattern` | Search backward for `pattern`         |
| `n`        | Next match (same direction)           |
| `N`        | Previous match (opposite direction)   |
| `*`        | Search forward for word under cursor  |
| `#`        | Search backward for word under cursor |

## Editing (Normal Mode)

### Deleting (Cutting)

| Key   | Action                         |
| ----- | ------------------------------ |
| `x`   | Delete character under cursor  |
| `X`   | Delete character before cursor |
| `dw`  | Delete word                    |
| `d$`  | Delete to end of line          |
| `d0`  | Delete to beginning of line    |
| `dd`  | Delete entire line             |
| `5dd` | Delete 5 lines                 |
| `dG`  | Delete to end of file          |
| `dgg` | Delete to beginning of file    |

### Copying (Yanking)

| Key   | Action                    |
| ----- | ------------------------- |
| `yw`  | Copy word                 |
| `y$`  | Copy to end of line       |
| `yy`  | Copy entire line          |
| `5yy` | Copy 5 lines              |
| `yG`  | Copy to end of file       |
| `ygg` | Copy to beginning of file |

### Pasting

| Key | Action                           |
| --- | -------------------------------- |
| `p` | Paste after cursor / below line  |
| `P` | Paste before cursor / above line |

### Undo/Redo

| Key      | Action |
| -------- | ------ |
| `u`      | Undo   |
| `Ctrl-r` | Redo   |

---

## Text Manipulation (Normal Mode)

| Key  | Action                                      |
| ---- | ------------------------------------------- |
| `~`  | Toggle case of character                    |
| `J`  | Join current line with next line            |
| `>>` | Indent line right                           |
| `<<` | Indent line left                            |
| `==` | Auto-indent line                            |
| `.`  | Repeat last command                         |
| `r`  | Replace single character                    |
| `c`  | Change (delete and enter Insert mode)       |
| `cw` | Change word                                 |
| `c$` | Change to end of line                       |
| `cc` | Change entire line                          |
| `S`  | Delete line and enter Insert (same as `cc`) |

### Command-line Mode Commands

| Command                        | Action                                 |
| ------------------------------ | -------------------------------------- |
| `:w`                           | Save file                              |
| `:q`                           | Quit                                   |
| `:wq` or `:x` or `ZZ`          | Save and quit                          |
| `:q!`                          | Quit without saving (force)            |
| `:w!`                          | Force write (override permissions)     |
| `:e filename`                  | Open/edit another file                 |
| `:e!`                          | Reload file (discard changes)          |
| `:set number` or `:set nu`     | Show line numbers                      |
| `:set nonumber` or `:set nonu` | Hide line numbers                      |
| `:set hlsearch`                | Highlight search matches               |
| `:set nohlsearch`              | Disable search highlighting            |
| `:noh`                         | Remove search highlighting (temporary) |
| `:syntax on`                   | Enable syntax highlighting             |
| `:syntax off`                  | Disable syntax highlighting            |
| `:help` or `:h`                | Open Vim help                          |
| `:help keyword`                | Search help for specific topic         |

---

## Search & Replace

| Command            | Action                                                     |
| ------------------ | ---------------------------------------------------------- |
| `:%s/old/new/g`    | Replace all occurrences of `old` with `new` in entire file |
| `:%s/old/new/gc`   | Replace with confirmation                                  |
| `:s/old/new/`      | Replace first occurrence in current line                   |
| `:s/old/new/g`     | Replace all occurrences in current line                    |
| `:5,10s/old/new/g` | Replace between lines 5 and 10                             |

---

## Working with Multiple Files

### Splits

| Key                         | Action                     |
| --------------------------- | -------------------------- |
| `:split` or `:sp filename`  | Horizontal split           |
| `:vsplit` or `:vs filename` | Vertical split             |
| `Ctrl-w w`                  | Switch between splits      |
| `Ctrl-w h/j/k/l`            | Move to split in direction |
| `Ctrl-w q`                  | Close current split        |
| `Ctrl-w =`                  | Equalize split sizes       |
| `Ctrl-w +`                  | Increase split height      |
| `Ctrl-w -`                  | Decrease split height      |

### Tabs

| Key                    | Action               |
| ---------------------- | -------------------- |
| `:tabnew filename`     | Create new tab       |
| `gt`                   | Go to next tab       |
| `gT`                   | Go to previous tab   |
| `:tabclose` or `:tabc` | Close current tab    |
| `:tabonly`             | Close all other tabs |

## Important Shortcuts Summary

| Shortcut | Action                 |
| -------- | ---------------------- |
| `Esc`    | Return to Normal mode  |
| `i`      | Insert                 |
| `a`      | Append                 |
| `o`      | New line below         |
| `O`      | New line above         |
| `dd`     | Delete line            |
| `yy`     | Copy line              |
| `p`      | Paste                  |
| `u`      | Undo                   |
| `Ctrl-r` | Redo                   |
| `gg`     | Go to top              |
| `G`      | Go to bottom           |
| `:w`     | Save                   |
| `:q`     | Quit                   |
| `:wq`    | Save & quit            |
| `:q!`    | Quit without saving    |
| `/`      | Search forward         |
| `?`      | Search backward        |
| `n`      | Next search result     |
| `N`      | Previous search result |

## Vim Configuration (.vimrc)

Sample `~/.vimrc` settings:

```bash
set number                  " Show absolute line numbers
set relativenumber          " Show relative line numbers (hybrid)
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Number of spaces per tab
set shiftwidth=4            " Number of spaces for auto-indent
set softtabstop=4           " Number of spaces for backspace
set autoindent              " Copy indent from previous line
set smartindent             " Smart auto-indenting
set wrap                    " Wrap long lines visually
set linebreak               " Wrap at word boundaries
set textwidth=100           " Line length indicator
set colorcolumn=100         " Show column line at 100 chars
set cursorline              " Highlight current line
set scrolloff=5             " Keep 5 lines above/below cursor
set sidescrolloff=5         " Keep 5 columns left/right
set showcmd                 " Show partial commands in status line
set showmode                " Show current mode
set wildmenu                " Enhanced command-line completion
set wildmode=list:longest   " Tab completion behavior
set ttyfast                 " Faster scrolling
```
