# Rustmacs

This is my personal [Emacs](https://www.gnu.org/software/emacs/) distribution.

The repo was mainly created for development with rust.
The goal is to have a usable and beautiful user interface for power programmers.
So I do the best to combine simplicity, design and productivity.

But note that I am still inexperienced with emacs and this repo is yet in pretty much uncomplete.
I (still) feel confident that this will change soon :)

## Installation

### Requirements

* [Emacs](https://www.gnu.org/software/emacs/) (tested for Emacs 27.1 on Arch Linux with X11)
* [Hack](https://github.com/source-foundry/Hack) font

### Setup

just move this directory into your `.emacs.d` directory

```sh
git clone https://github.com/natrixaeria/rustmacs
mv -uT rustmacs ~/.emacs.d
```

## Screenshots

Startscreen | M-x
:-:|:-:
![the dashboard](./screenshots/startscreen.png) | ![the m-x prompt](./screenshots/m-x.png)

TODO: *further steps?*

## A better name would be Frankenstein's monster

Much configuration is copied-pasted from other places.
Some of them are:

* [Ian's Emacs Configuration](https://github.com/ianpan870102/.personal-emacs.d)
* [Centaur Emacs](https://github.com/seagle0128/.emacs.d)
* [font-lock+](https://www.emacswiki.org/emacs/font-lock%2b.el)
* [suvratapte's config](https://github.com/suvratapte/dot-emacs-dot-d)

## Troubleshooting

### The file tree navigator (`treemacs`) shows strange icons

Do `M-x all-the-icons-install-fonts`. I'm still working on how to automate this

## Contributing

Contributions and issues are of course very welcome. But please be kind!
