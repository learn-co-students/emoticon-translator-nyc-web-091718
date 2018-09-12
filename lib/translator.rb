# require modules here
require 'pry'

require 'yaml'

def load_library(file_path)

loading_hash = YAML.load_file(file_path)
 new_hash = {}

    loading_hash.each do |key, value|

    end
    new_hash["get_emoticon"] = {}
    new_hash["get_meaning"] = {}
    new_hash

    loading_hash.each do |key, value|

    new_hash["get_meaning"][value[1]] = key
    new_hash["get_emoticon"][value[0]] = value[1]
     end

new_hash
end



def get_japanese_emoticon(file_path, emoticon)
  new_hash = load_library(file_path)

  new_hash.each do |key, value|
    value.each do |value|
      if emoticon == value[0]
        return value[1]
      end
    end
    return "Sorry, that emoticon was not found"
  end
end



def get_english_meaning(file_path, emoticon)
  new_hash = load_library(file_path)
  new_hash["get_meaning"].each do |key, value|
      if emoticon == key
        return value
      end
  end
  return "Sorry, that emoticon was not found"
end
