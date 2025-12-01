def contains?(hash, search_value)
  values = hash.values
  return true if values.include?(search_value)

  nested_hashes = values.select { |value| value.is_a?(Hash) }
  nested_hashes.any? { |nested_hash| contains?(nested_hash, search_value) }
end

