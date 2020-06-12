use Test;

use cmark;

my $str = "Basic";

is( commonmark-to-html($str), "<p>Basic</p>\n", "All good");
like commonmark-to-html("README.md".IO.slurp), /cmark/, "Big file";
like commonmark-to-html(q:to/EOC/),
# Header

Filler
## Another header
EOC
/"<h1>Header</h1>"/, "simple example";

done-testing;
