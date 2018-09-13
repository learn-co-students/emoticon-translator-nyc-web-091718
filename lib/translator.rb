require "yaml"
require "pry"

def load_library(path)
  emoticons = { "get_meaning" => {},"get_emoticon" => {} }
  
  YAML.load_file(path).each do |name, emojis|
    e, j = emojis
    emoticons["get_emoticon"][e] = j
    emoticons["get_meaning"][j] = name 
  end 
  emoticons
end 

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  
  if emoticons["get_emoticon"][emoticon].nil?
    "Sorry, that emoticon was not found"
  else 
    emoticons["get_emoticon"][emoticon]
  end 
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  
  if emoticons["get_meaning"][emoticon].nil?
    "Sorry, that emoticon was not found"
  else 
    emoticons["get_meaning"][emoticon]
  end 
end