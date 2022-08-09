import uri, strformat, harpoon, json

proc popWelcomeCard*(bg, avatar: Uri, text1, text2, text3: string): string =
  ## Returns a discord welcome image url as a string
  fmt"https://api.popcat.xyz/welcomecard?background={$bg}&text1={text1}&text2={text2}&text3={text3}&avatar={avatar}"

proc popColor*(hexColor: string): JsonNode =
  ## Returns information about a given hex color as json
  let url = fmt"https://api.popcat.xyz/color/{hexColor}"
  return getJson(parseUri(url))

proc popScreenshot*(site: Uri): string =
  ## Returns a screenshot of the provided website as a link
  fmt"https://api.popcat.xyz/screenshot?url={site}"

proc popLyrics*(song: string): JsonNode =
  ## Returns information about a given song like lyrics or cover art as json
  let url = fmt"https://api.popcat.xyz/lyrics?song={song}"
  return getJson(parseUri(url))

proc popRandomColor*(): JsonNode =
  ## Generate a random color, the hex code and name are returned as json
  let url = "https://api.popcat.xyz/randomcolor"
  return getjson(parseuri(url))

proc popIMDB*(movie: string): JsonNode =
  ## Get information about the given movie as json
  let url = fmt"https://api.popcat.xyz/imdb?q={movie}"
  return getjson(parseuri(url))

proc popSteam*(app: string): JsonNode =
  ## Get information about the given steam app as json
  let url = fmt"https://api.popcat.xyz/steam?q={app}"
  return getjson(parseuri(url))

proc popSadCat*(text: string): string =
  ## Generate a sadcat meme using the provided text, return a url to the image
  fmt"https://api.popcat.xyz/sadcat?text={text}"

proc popOogway*(text: string): string =
  ## Generate a oogway meme using the provided text, return a url to the image
  fmt"https://api.popcat.xyz/oogway?text={text}"

proc popCommunist*(image: Uri): string =
  ## Overlay a communism icon on your image
  fmt"https://api.popcat.xyz/communism?image={$image}"

proc popCar*(): JsonNode =
  ## Retuns a random car, with its title and image url as json
  let url = "https://api.popcat.xyz/car"
  return getjson(parseuri(url))

proc popPooh*(text1, text2: string): string =
  # Return the url of e generated pooh meme
  fmt"https://api.popcat.xyz/pooh?text1={text1}&text2={text2}"

proc popShowerThought*(): JsonNode =
  ## Returns a random shower thought as json
  let url = "https://api.popcat.xyz/showerthoughts"
  return getjson(parseuri(url))

proc popQuote*(): JsonNode =
  ## Generate a random quote (as json)
  let url = "https://api.popcat.xyz/quote"
  return getjson(parseuri(url))

proc popWanted*(image: Uri): string =
  ## Add a wanted overlay to your image, return the image url
  return fmt"https://api.popcat.xyz/wanted?image={$image}"

proc popReddit*(subName: string): JsonNode =
  ##  Get information about a subreddit as json
  let url = fmt"https://api.popcat.xyz/subreddit/{subName}"
  return getjson parseUri url

proc popGithub*(username: string): JsonNode =
  ## Get inormation about a github profile as json
  let url = fmt"https://api.popcat.xyz/github/{username}"
  return getjson parseUri url

proc popWeather*(city: string): JsonNode =
  ## Get weather information of a city as json
  let url = fmt"https://api.popcat.xyz/weather?q={city}"
  return getjson parseUri url

proc popWWW*(image1, image2: Uri): string =
  ## Generate a who-would-win meme with the images provided
  fmt"https://api.popcat.xyz/whowouldwin?image2={image2}&image1={image1}"

proc popGun*(image: Uri): string =
  ## Add a gun overlay to your image
  fmt"https://api.popcat.xyz/gun?image={image}"

proc catify*(text: string): string =
  ## Connvert your text into lal-cat speak
  let url = fmt"https://api.popcat.xyz/lulcat?text={text}"
  return getjson(parseUri(url))["text"].getStr()



