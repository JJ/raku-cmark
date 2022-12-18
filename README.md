# cmark::Simple [![Test Raku](https://github.com/JJ/raku-cmark/actions/workflows/test.yaml/badge.svg)](https://github.com/JJ/raku-cmark/actions/workflows/test.yaml)


A straightforward wrapper for [commonmark library](https://github.com/commonmark/cmark)

## Installing


You need to install libcommonmark first, either from source or installing
 `libcmark-dev` from Debian repositories.

In the case of Ubuntu, you will need to manually copy the library to `/usr/lib`

    sudo cp /usr/local/lib/libcmark.so.0.29.0 /usr/lib/libcmark.so

Latest version is `0.30.2`. Use whatever version you've installed in your
 system.

## Running

```perl6
use cmark::Simple;

say commonmark-to-html(q:to/EOC/);
# Header

Filler
## Another header
EOC
```
These symbols are also exported:

```
constant \CMARK_OPT_DEFAULT is export = 0;
constant \CMARK_OPT_SOURCEPOS  is export = 2;
constant \CMARK_OPT_HARDBREAKS  is export = 4;
constant \CMARK_OPT_SAFE  is export = 8;
constant \CMARK_OPT_UNSAFE is export = 131072;
constant \CMARK_OPT_NOBREAKS = 16;
constant \CMARK_OPT_NORMALIZE = 256;
constant \CMARK_OPT_VALIDATE_UTF8 = 512;
constant \CMARK_OPT_SMART = 1024;


sub cmark_markdown_to_html(Str $text,
                           int32 $len, int8 $options
                            --> Str )
```

Use them directly in case you need to have mrore flexibility, or options such
 as validating UTF8. Check [the manual page](https://manpages.debian.org/testing/libcmark-dev/cmark.3.en.html) for instructions.
 
## See also

See [the commonmark page](https://commonmark.org/) for additional information;
also the excellent [Cmark module by Khalid Elboray](https://github.com/khalidelboray/raku-cmark) an alternative, more flexible, complete port.

## License
 
This module will be licensed, by default, under the Artistic 2.0 License (the same as Raku itself)
