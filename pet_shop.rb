def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  #find the pet shop's total cash value
  pet_shop[:admin][:total_cash] += num
  #change it using num
end

def test_add_or_remove_cash__remove(pet_shop, num)
  pet_shop[:admin][:total_cash] -= num
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  result = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      result << pet
    end
  end
  return result
end

def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    if pet[:name] == name
      return  pet
    end
  end
  return nil
end


def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if {|x| x[:name] == name}
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, num)
  customer[:cash] -= num
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end
