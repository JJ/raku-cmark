use Test;

use cmark;

my $str = "Basic";

say commonmark-to-html($str).decode;
ok( commonmark-to-html($str), "All good");

done-testing;
