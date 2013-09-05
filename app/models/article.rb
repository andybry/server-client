require 'open-uri'

class Article < Hash

  @@index = 0
  URLS = [
    "http://api.mirror.co.uk/news/1917634",
    "http://api.mirror.co.uk/3am/1917634",
    "http://api.mirror.co.uk/sport/1917634",
    "http://api.mirror.co.uk/lifestyle/1917634",
  ]

  def initialize
    @@index += 1
    @@index %= URLS.length
    data = open(URLS[@@index]).read
    hash = JSON.parse(data)
    self.merge! hash
  end

end
