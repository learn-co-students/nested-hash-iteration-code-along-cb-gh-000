require 'pry'

  # This is the array we will be passing into the remove_strawberry method
#   contacts = {
 ###    email: "jon_snow@thewall.we", 
    #   favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    # },
#     "Freddy Mercury" => {
 #      name: "Freddy",
  #     email: "freddy@mercury.com",
   #    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]#
 #    }
#   }
  
def remove_strawberry(contacts)
  contacts.each do |cont, info|
    info.each do |i, k|
      if i == :favorite_ice_cream_flavors
        k.each do |flavor|
          if flavor == "strawberry"
            k.delete(flavor)
          end
        end
      end
    end
  end
end