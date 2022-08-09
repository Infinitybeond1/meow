# Package

version       = "0.1.0"
author        = "Luke"
description   = "A new awesome nimble package"
license       = "GPL-3.0-or-later"
srcDir        = "src"


# Dependencies

requires "nim >= 1.4.8"
requires "harpoon"

task lint, "Lint all *.nim files":
  exec "nimpretty --indent:2 */**.nim"

task gendoc, "Generate api docs":
  exec "mkdir -p doc;nimble doc2 src/meow.nim;mv -f src/htmldocs/* doc/;mv -f doc/meow.html doc/index.html"
