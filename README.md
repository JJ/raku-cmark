# cmark

A straightforward wrapper for [commonmark library](https://github.com/commonmark/cmark)

## Installing


You need to install libcommonmark first, either from source or installing
 libcmark-dev from repositories.

In the case of Ubuntu, you will need to manually copy the library to /usr
/local/lib

    sudo cp /usr/local/lib/libcmark.so.0.29.0 /usr/lib/libcmark.so

## Running

```perl6
use cmark;

say commonmark-to-html(q:to/EOC/);
# Header

Filler
## Another header
EOC
```

## See also

<-- Related stuff -->

## License
<-- 
This module will be licensed, by default, under the Artistic 2.0 License (the same as Raku itself). You can change it by using a different LICENSE file, as well as changing the license field in META6.json -->
