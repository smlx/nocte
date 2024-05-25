# Nocte

Nocte is a [color scheme](https://neovim.io/doc/user/syntax.html#%3Ahighlight) for [Neovim](https://github.com/neovim/neovim) syntax highlighting.

Nocte does not choose a specific palette.
Instead it uses your terminal color scheme for highlighting.

Nocte is entirely inspired by @noahfrederick's [vim-noctu](https://github.com/noahfrederick/vim-noctu).
However in Neovim v0.10.0, some of the highlighting links assumed by vim-noctu were changed.
So I created nocte to maintain the functionality of vim-noctu in recent versions of Neovim.

## Features

* Use the same color scheme in Neovim as you do for everything else in your terminal!
* Zero configuration. Just configure your terminal colors, and nocte will blend in with its environment.

## Requirements

* Designed for 16-color/4-bit terminals. That's enough for anyone, surely!
* Only tested against the latest release of Neovim.

## Example / Screenshots

I use [foot](https://codeberg.org/dnkl/foot) with the following color scheme, which is a slightly tweaked version of GNOME Terminal's built-in [Tango color scheme](https://github.com/GNOME/gnome-terminal/blob/43b859ae64e5df659b3e9dd5d9a341e6c5c8f896/src/terminal-profile-editor.cc#L218-L236):

```ini
[main]
bold-text-in-bright=palette-based
[colors]
foreground=babdb6
background=000000
regular0=2e3436
regular1=cc0000
regular2=4e9a06
regular3=c4a000
regular4=3465a4
regular5=75507b
regular6=06989a
regular7=d3d7cf
bright0=555753
bright1=ef2929
bright2=8ae234
bright3=fce94f
bright4=729fcf
bright5=ad7fa8
bright6=34e2e2
bright7=eeeeec
```

It gives a result like this:

![Screenshot showing the same terminal color scheme in multiple app. Clockwise from top left: tig, Neovim (markdown), Neovim (gitcommit), htop, Neovim (lua).](screenshot.webp "Nocte screenshot")

## The name

As a rewrite of Noctu, I just went with another form of the same Latin root word.
I don't know Latin, it just seemed to fit.
