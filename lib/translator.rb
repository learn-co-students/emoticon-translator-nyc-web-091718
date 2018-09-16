# require modules here
require "yaml"
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  output_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |meaning, emoticons|
    output_hash["get_emoticon"][emoticons[0]] = emoticons[1]
    output_hash["get_meaning"][emoticons[1]] = meaning
  end
  output_hash
end

def get_japanese_emoticon(path, english_emoticon)
  emoticons = load_library(path)
  japanese_emoticon = emoticons["get_emoticon"][english_emoticon]
  if japanese_emoticon == nil
    "Sorry, that emoticon was not found"
  else
    japanese_emoticon
  end
end

def get_english_meaning(path, japanese_emoticon)
  emoticons = load_library(path)
  english_emoticon = emoticons["get_meaning"][japanese_emoticon]
  if english_emoticon == nil
    "Sorry, that emoticon was not found"
  else
    english_emoticon
  end
end
