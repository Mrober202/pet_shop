def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  pet_shop[:admin][:total_cash] += num
  return total_cash(pet_shop)
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  pet_shop[:admin][:pets_sold] += num
  return pets_sold(pet_shop)
end

def stock_count(pet_shop)
  return pet_shop[:pets].count().to_i()
end

def pets_by_breed(pet_shop, breed)
  number = []
  pets = pet_shop[:pets]
  for pet in pets
    if(pet[:breed] == breed)
      number << pet
    end
  end
  return number
end

def find_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    if(pet[:name] == name)
     return name
   else
    return nil
  end
end
end

def remove_pet_by_name(pet_shop, pet)
  pets = pet_shop[:pets]
  # if the name entered matches a name in the hash, remove that pet.
  pet_shop[:pets].delete(pet)

end

def add_pet_to_stock(pet_shop, @new_pet)
# add new pet to hash
pet_shop[:pets].merge(@new_pet)
# prove its added by counting amount in the hash
return pet_shop[:pets].count().to_i()
end

def customer_pet_count(pet_shop)
  # access the nested hash inside
  return pet_shop[:customers][:pets].count().to_i()
end

def add_pet_to_customer(pet_shop)
  # access the nested hash
  # add the info to [:pets]
  end