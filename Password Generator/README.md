# Password Generator

Pseudo [suckless](https://suckless.org) passphrase generator, using
[diceware](https://theworld.com/~reinhold/diceware.html) passphrase generation
methods. Generates relatively randomized phrases using `libsodium`.

## Usage

`passgen [NUMBER_OF_WORDS]`

Example:

```console
user@system:~$ passgen 10
pants banks cashew walt fo merry child fruit aunt cipher
```

Note: For complete security as per the [diceware
webpage](https://theworld.com/~reinhold/diceware.html), it is not recommended to
use this software or any other software tool to create or store passphrases. If
you are extremely paranoid, generate using fair casino dice. If you are less
concerned, at least generate a few hundred words and select them from that list,
adding some salt.

## Config

Edit `WORD_LIST` in `passgen.c` to either `./diceware.txt` or `./beale.txt` for
your preferred diceware word list.

## Installation

```console
user@system:~$ make
user@system:~$ sudo make clean install
```

Will install into `/usr/local/` by default. To change installation directory,
edit `DESTDIR` in `Makefile`.

## Uninstallation

```console
user@system:~$ sudo make uninstall
```

## License

None
