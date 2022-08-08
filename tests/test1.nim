# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest, json, harpoon, uri

import meow
test "Color":
  check popColor("FFFFFF") == getJson(parseUri"https://api.popcat.xyz/color/FFFFFF") 
test "Lyrics":
  check popLyrics("never gonna give you up") == getJson(parseUri"https://api.popcat.xyz/lyrics?song=never gonna give you up") 
test "IMDB":
  check popIMDB("iron man") == getJson(parseUri"https://api.popcat.xyz/imdb?q=iron+man") 
test "Steam":
  check popSteam("minecraft") == getJson(parseUri"https://api.popcat.xyz/steam?q=minecraft") 
