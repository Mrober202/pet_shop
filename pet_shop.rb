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