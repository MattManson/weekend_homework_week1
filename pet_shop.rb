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
  pets=[]
  for pet in pet_shop_name[:pets]
    pets.push(pet) if pet[:breed] == breed
  end
  return pets
end

def pets_by_breed2(pet_shop_name, breed)
  pets[]
  for pet in pet_shop_name[:pets]
    pets.push(pet) if pet[:breed] == breed
  end
  return pets
end

def find_pet_by_name(pet_shop_name, petname)
  for pet in pet_shop_name[:pets]
    if petname == pet[:name]
      return pet
    end
  end
  return nil
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

def customer_can_afford_pet(cust_money, new_pet_cost)
  if cust_money[:cash] - new_pet_cost[:price] <0
    return false
  else
    return true
  end
end

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return
  elsif customer_can_afford_pet(customer, pet) == false
    return
  else
  price = pet[:price]
  before_count = customer_pet_count(customer)
  customer[:pets]<<pet
  after_count = customer_pet_count(customer)
  increase_pets_sold(shop, (after_count - before_count))
  add_or_remove_cash(shop, price)
  end
end
