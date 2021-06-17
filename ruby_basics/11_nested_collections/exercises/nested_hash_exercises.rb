def add_information_about_language(languages, language_name, info_key, info_value)
  # Take languages (a hash with language names as keys and information about
  # each language in a nested hash as the corresponding value) and add the
  # key/value pair info_key/info_value to the nested hash of language_name,
  # then return the updated languages hash
end

def add_language(languages, language_name, language_info_value)
  # Take languages and add the key/value pair language_name/language_info_value
  # to it, then return languages
end

def delete_information_about_language(languages, language_name, info_key)
  # Take languages and delete the key/value pair with key info_key from
  # language_name, then return languages
end

def delete_language(languages, language_name)
  # Take languages and delete the language_name key/value pair, then return
  # languages
end

def delete_beautiful_languages(languages)
  # Take languages and delete any language that has the key/value pair
  # { is_beautiful => true } listed in its information, then return languages
end

def find_language_facts(languages, fact_index)
  # Take languages (now with additional facts added to each language with the
  # key :facts and value of an array of strings) and return an array containing
  # the fact that each language has at fact_index of its facts array
end
