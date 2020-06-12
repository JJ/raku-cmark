use NativeCall;
use NativeHelpers::Blob;

unit module cmark;

constant \CMARK_OPT_DEFAULT is export = 0;
constant \CMARK_OPT_SOURCEPOS  is export = 2;
constant \CMARK_OPT_HARDBREAKS  is export = 4;
constant \CMARK_OPT_SAFE  is export = 8;
constant \CMARK_OPT_UNSAFE is export = 131072;
constant \CMARK_OPT_NOBREAKS = 16;
constant \CMARK_OPT_NORMALIZE = 256;
constant \CMARK_OPT_VALIDATE_UTF8 = 512;
constant \CMARK_OPT_SMART = 1024;


sub cmark_markdown_to_html(CArray[uint8] $text,
                           int32 $len, int8 $options
        --> CArray[uint8] )
    is native("cmark") is export {*};

sub commonmark-to-html( Str $text ) is export {
    my CArray[uint8] $converted = CArray[uint8].new: |$text.ords;
    my CArray[uint8] $return = cmark_markdown_to_html( $converted, $text.codes,
    CMARK_OPT_DEFAULT);
    my @bob;
    my $index = 0;
    while $return[$index] {
        @bob.append: $return[$index++];
    }
    return Blob.new: @bob;
}