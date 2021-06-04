def add_to_nested_hash(hash, add_to_hash, key, value)
  hash[add_to_hash][key] = value
  hash
end

def add_nested_hash(hash, key_to_add, value_to_add)
  hash[key_to_add] = value_to_add
  hash
end

def delete_from_nested_hash(hash, delete_from_hash, delete_key)
  hash[delete_from_hash].delete(delete_key)
  hash
end

def delete_nested_hash(hash, delete_key)
  hash.delete(delete_key)
  hash
end

def remove_beautiful_languages(hash)
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
