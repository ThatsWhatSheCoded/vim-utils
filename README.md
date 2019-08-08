# vim-utils

The [vim-utils](https://github.com/ThatsWhatSheCoded/vim-utils) plug-in is a
collection of Vim scripts I use daily. While useful (at least to me), they
don't do enough, per se, to justify their own repo. The collection will be
added to (slowly) as these scripts are being transitioned from a previous repo
while undergoing some refactoring and general clean-up


## Installation

For ease of maintenance and updates, I recommend a plug-in manager such as
[Pathogen](https://github.com/tpope/vim-pathogen) or
[Vundle](https://github.com/VundleVim/Vundle.vim.git).

There is also the option of using the native Vim 8 packages loading (see: `:help packages`).


## Documentation

Documentation has been generated by [vimdoc](https://github.com/google/vimdoc)
and is located in the [docs](../master/doc) directory.


## Usage

### Remaps: Search

These have been modified to keep the window view during searches at the
specified percentage scroll (e.g. if `g:vim_utils_view_pct = 50` would keep the
current cursor position at 50% of the total window size much like `zz`).
Default is a comfortable 25% (`g:vim_utils_view_pct = 25`).

| Key / Motion  | Description  |
|:-------------:|:-------------|
| `n`           | Repeat latest `/` or `?` search|
| `N`           | Repeat latest `/` or `?` search|
| `*`           | Search forward for next occurrence of word|
| `#`           | Search backward for next occurrence of word|

### Remaps: Display

| Key / Motion  | Description  |
|:-------------:|:-------------|
| `<F1>`        | Toggle line numbers display (off, absolute, hybrid)


## Contact

If you have any questions, bug reports, enhancements, suggestions, or feedback, please open an issue or pull request on
[GitHub](https://github.com/ThatsWhatSheCoded/vim-utils).
