use Test;

use cmark;

my $str = "Basic";

is( commonmark-to-html($str), "<p>Basic</p>\n", "All good");
like commonmark-to-html("README.md".IO.slurp), /cmark/, "Big file";

done-testing;
