Ingredient.destroy_all
ingredients = %w["rum",
  "tequila",
  "whiskey",
  "vodka"]

  ingredients.each do |i|
    Ingredient.create!(name:i)
  end
