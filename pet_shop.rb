def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(cash)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  return pet_shop[:admin][:total_cash] += money
end

def pets_sold(sold)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_name , sold)
  return @pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop_name)
  return pet_shop_name[:pets].length
end

def pets_by_breed(pet_shop_name, breed)
  pets=[]   # make an empty array, gonna return this later

  for pet in pet_shop_name[:pets]
    # for every pet in the pet shop
    # result.push(pet[:pets][:breed])
    pets.push(pet) if pet[:breed] == breed


    # if pet[:pets][:breed] == breed
    #i wanna add each pet (whose breed is equal to the breed variable thats being passed in from the test)
    #to the empty result array
  end
  return pets
  #and then print the number of values in the array
end

def pets_by_breed2(pet_shop_name, breed)
  pets[]
  for pet in pet_shop_name[:pets]
    pets.push(pet) if pet[:breed] == breed
  end
  return pets
end

def find_pet_by_name(pet_shop_name, petname)
  pets = {}
  for pet in pet_shop_name[:pets]
    if petname == pet[:name]
      # pets
      return pets = {name: petname}
    end
  end
  puts pets
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if name == pet[:name]
      shop[:pets].delete(pet)
    end
  end
  puts pet
end

def add_pet_to_stock(shop, newpet)
  shop[:pets].push(newpet)
  return [:pets].length

end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)

  return customer[:pets].length
end



# def nil_pet_by_name
#   pets[]
#   for pet in pet_shop_name[:pets]
#     pets.push(pet) if pet[:name] == breed
#   end
#   return pets
# end
