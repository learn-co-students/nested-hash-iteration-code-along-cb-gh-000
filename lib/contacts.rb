                      # Iterating over Nested Hashes #

# Using Pry for debugging purposes.
require 'pry'

# Note: Name variables to accurately reflect the data they represent. When the
# value that the method is iterating over is another hash, explicitly add a
# '_hash' to the end of the variable name (E.G. contact_details_hash below).

# Method iterates over a nested hash in order to delete a particular key/value pair.
def remove_strawberry(contacts)
  # First, the method needs to iterate over the top level of the hash where the
  # keys should be a 'person' variable, and the values should be a hash of
  # 'details' (contact_details_hash) of that 'person'.
  contacts.each do |person, contact_details_hash|
    # Second, the method needs to iterate over the second level into the nested
    # hash to access the 'attribute' and 'data' key/value.
    contact_details_hash.each do |attribute, data|
      # Third, the method creates an 'if' statement to access the particular
      # 'attribute' (key) if it equals :favorite_ice_cream_flavors.
      if attribute == :favorite_ice_cream_flavors
        # Finally, the metod will delete the data (value) only if that data is
        # equal to 'strawberry'. #delete_if will iterate through the hash and
        # delete the key/value pair if the block returns true.
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
