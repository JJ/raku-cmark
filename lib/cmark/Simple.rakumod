use NativeCall;

unit module cmark::Simple;

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
    is native("cmark") is export {*};

sub commonmark-to-html( Str $text ) is export {
    cmark_markdown_to_html( $text, $text.encode.elems, CMARK_OPT_DEFAULT);
}