# prowlet

<a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<a href="https://aur.archlinux.org/packages/prowlet-git/"><img src="https://img.shields.io/aur/version/cuff-git"></a>

Query the [Prowlarr](https://github.com/prowlarr/prowlarr) search API from the command line.

**Prefer a UI? Check out [`rofi-cuff`](https://github.com/loiccoyle/rofi-prowlet)**

# Installation

### Dependencies

If you are installing manually, you'll need to also install the following dependencies:

- [`curl`](https://github.com/curl/curl)
- [`jq`](https://github.com/stedolan/jq)
- Access to a [`prowlarr`](https://github.com/prowlarr/prowlarr) server.

### Manual

To manually install `cuff` just git clone this repository and place the script in your `$PATH`:

```
git clone https://github.com/loiccoyle/cuff
cd cuff
cp cuff /somewhere/in/your/PATH/
```

If you want <TAB> completion, place the corresponding [`completion`](completions) file somewhere your shell knows about.

### Arch linux

Using your prefered AUR helper:

```
paru -S cuff-git
```

# Completions

Completions for various shells can be found in the [`completions`](completions) folder.

# Usage

```

```

# Note

To use the `-s` and `-k` options to start and stop the `prowlarr` service before/after making a query, will require `sudo` access.

# TODO

- [x] AUR package
- [ ] write bash completion
