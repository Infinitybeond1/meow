mkdir -p doc
nimble doc2 src/meow.nim;
mv -f src/htmldocs/* doc/;
mv -f doc/meow.html doc/index.html
