require "yaml"
require "pry"

def load_library(path)
  full_table = {"get_meaning" => {},"get_emoticon" => {} }
  YAML.load_file(path).each do |meaning, array|
    english, japanese = array
    full_table["get_emoticon"][english] = japanese
    full_table["get_meaning"][japanese] = meaning
  end
full_table

end

def get_japanese_emoticon(path, emoticon)
  full_table = load_library(path)
  result = full_table["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  full_table = load_library(path)
  result = full_table["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
