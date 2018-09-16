# require modules here
require "yaml"


def load_library(file)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emote_library = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |value, emote|
    emote_library["get_meaning"][emote[1]] = value
    emote_library["get_emoticon"][emote[0]] = emote[1]
  end
  emote_library
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
  japanese_emote = library["get_emoticon"][emoticon]
  japanese_emote ? japanese_emote : 'Sorry, that emoticon was not found'
end

def get_english_meaning(file, emoticon)
  library = load_library(file)
  english = library['get_meaning'][emoticon]
  english ? english : 'Sorry, that emoticon was not found'
end
