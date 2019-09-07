require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
  contacts.each do |contact , data|
      data.each do |key, value|
        # puts "#{key} :: #{value}"
        if key == :favorite_ice_cream_flavors
          # puts value
          value.delete_if {|data| data == "strawberry"}
        end
    end
  end
  # puts contacts
end

# remove_strawberry(contacts)
