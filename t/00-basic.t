use Test;

use cmark;

my $str = "Basic";

is( commonmark-to-html($str), "<p>Basic</p>\n", "All good");

done-testing;
