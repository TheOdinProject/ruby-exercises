def add_information_about_language(hash, language_name, info_key, info_value)
  hash[language_name][info_key] = info_value
  hash
end

def add_language(hash, language_name, language_info_value)
  hash[language_name] = language_info_value
  hash
end

def delete_information_about_language(hash, language_name, info_key)
  hash[language_name].delete(info_key)
  hash
end

def delete_language(hash, language_name)
  hash.delete(language_name)
  hash
end

def delete_beautiful_languages(hash)
  hash.reject do |_language, data|
    data.fetch(:is_beautiful?)
  end
end

def find_language_facts(hash, fact_index)
  result = []
  hash.each_key do |key|
    result.push(hash[key].fetch(:facts)[fact_index])
  end
  result
end
