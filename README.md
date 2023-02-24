# prowlet

<a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<a href="https://aur.archlinux.org/packages/prowlet-git/"><img src="https://img.shields.io/aur/version/prowlet-git"></a>

Query the [Prowlarr](https://github.com/prowlarr/prowlarr) search API from the command line.

**Prefer a UI? Check out [`rofi-prowlet`](https://github.com/loiccoyle/rofi-prowlet)**

## 📦 Installation

### Dependencies

If you are installing manually, you'll need to also install the following dependencies:

- [`curl`](https://github.com/curl/curl)
- [`jq`](https://github.com/stedolan/jq)
- Access to a [`prowlarr`](https://github.com/prowlarr/prowlarr) server.

### Manual

To manually install `prowlet` just git clone this repository and place the script in your `$PATH`:

```
git clone https://github.com/loiccoyle/prowlet
cd prowlet
cp prowlet /somewhere/in/your/PATH/
```

If you want <TAB> completion, place the corresponding [`completion`](completions) file somewhere your shell knows about.

### Arch linux

Using your prefered AUR helper:

```
paru -S prowlet-git
```

### Completions

Completions for various shells can be found in the [`completions`](completions) folder.

## 📋 Usage

<!-- help start -->

```
$ prowlet -h
Query the Prowlarr search API from the command line.

Usage:
    prowlet [OPTIONS] {search, config, indexers, categories, open}
        -h                        Show this message and exit.
        -r                        Raw output, no coloring.
        -v                        Verbosisty, up to -vv.
        -s                        Start prowlarr.service if not running.
        -k                        Stop prowlarr.service before exiting.
        -u PROWLARR_URL           Prowlarr URL.
        -a API_KEY                Prowlarr API key, will query prowlarr if not provided.
    prowlet search [OPTIONS] QUERY   Perform a search.
        -f FORMAT                 Output format, in jq syntax, full json output if not provided.
        -c CATEGORY               Restrict search to caregories.
        -i INDEXER                Restrict search to indexers.
                                  INDEXER must be a configured indexer.
        -s SORTKEY                Sort results by key.
    prowlet indexers             List configured indexers.
    prowlet categories           List torrent categories.
    prowlet config               Show prowlarr config (json).
    prowlet open                 Open the prowlarr dashboard using 'firefox'.

Examples:
    Search for big buck bunny on all configured indexers.
    $ prowlet search big buck bunny
    Search for big buck bunny movies/tv on tpb indexer.
    $ prowlet search -c movies -c tv -i thepiratebay big buck bunny
    Search for ubuntu sorted by seeders.
    $ prowlet search -s seeders ubuntu
    Search for ubuntu and output the title and link, format with column.
    $ prowlet search -f '\(.title)|\(.guid//.magnetUrl)' ubuntu | column -t -s"|"
```

<!-- help end -->

## ✏️ Note

To use the `-s` and `-k` options to start and stop the `prowlarr` service before/after making a query, will require `sudo` access.

## TODO

- [x] AUR package
- [ ] write bash completion
