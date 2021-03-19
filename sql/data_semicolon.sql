INSERT INTO ingredient_table(ingredients,recipe_id)
VALUES('Bread',"{'1'}"),('Avacado',"{'1'}"),('Black beans',"{'2'}"),('Salsa',"{'2'}"),('Cheese',"{'2','6','9,'10'}"),('Tortilla',"{'2'}"), 
('Olive oil', "{'3','5','7','9'}"),('Onion', "{'3','5'}"),('Garlic', "{'3','7','9'}"),('Ginger', "{'3'}"),('Curry powder', "{'3'}"),
('Spinach', "{'3','5','9'}"),('Tomato Sauce', "{'3'}"),('Chickpeas', "{'3'}"),
('Oats', "{'4'}"),('Milk', "{'4'}"),('Greek yogurt', "{'4'}"),('Peanut butter', "{'4'}"),
('Cocoa powder', "{'4','8'}"),('Salt', "{'4','5','7','8','9','10'}"),('Bananna', "{'4'}"),('Raspberries', "{'4'}"),
('Red pepper', "{'5','7'}"),('Green pepper', "{'5'}"),('Mushrooms', "{'5'}"),('Egg', "{'5','8'}"),
('Pasta', "{'6','10'}"),('Pasta sauce', "{'6'}"),('Pepperoni', "{'6'}"),('Basil', "{'6'}"),
('Quinoa', "{'7'}"),('Cherry tomatoes', "{'7'}"),('Cucumber', "{'7'}"),('Orange pepper', "{'7'}"),
('Parsley', "{'7'}"),('Mint', "{'7'}"),('Lemon', "{'7'}"),('Pepper', "{'7','9','10'}"),
('Flour', "{'8'}"),('Sugar', "{'8'}"),('Canola oil', "{'8'}"),('Vanilla extract', "{'8'}"),('Chocolate chips', "{'8'}"),
('Ciabatta bread', "{'9'}"),('Pepper flakes', "{'9','10'}"),('Broccoli', "{'10'}"),('Butter', "{'10'}")\n

INSERT INTO recipe(recipe_id,recipe_name,ingredients,instruction,prep_time,cooking_time)
VALUES
(1,'Avacado Toast','1 Slice of bread\n1 Avocado /n','1) Toast the bread\n2) Cut the Avacado\n3) spread the Avacado on the Toast', 5,0),
(2, 'Bean Burrito','1 tortilla\n1 cup of black beans\n1/4 cup of salsa', '1) Take a tortilla, 2) Spread Salsa on the tortilla. 3) Add Beans. 4) Add Cheese 5) Microvave it for 2 mins', 5,2),
(3, 'Curried Chickpeas Spinach', '2 Tbsp olive oil\n1 onion\n2 cloves of garlic\n1 inch fresh ginger\n1 1/2 Tbsp curry powder\n8 oz. spinach\n15 oz tomato sauce\n15 oz. chickpeas','1) Dice the onion, mince the garlic, and grate the ginger on a small holed cheese grater. Sauté the onion, garlic, and ginger in a large skillet with the olive oil over medium heat until the onions have softened (3-5 minutes).\n2) Add the curry powder and continue to sauté with the onion mixture for one minute more. Add about 1/4 cup of water to the skillet along with the fresh spinach and continue to sauté until the spinach has wilted. The water will help steam and wilt the spinach (no water needed if using frozen spinach).\n3) Drain and rinse the chickpeas. Add them to the skillet along with the tomato sauce. Stir well to distribute the spices in the sauce and heat through (5 minutes). Serve over rice or with bread.\nSource: https://www.budgetbytes.com/curried-chickpeas-spinach/',5,20),
(4,'Chocolate PB&J Overnight Oats','1/2 cup oats\n2/3 cup skim milk\n6 oz Greek vanilla yogurt\n2 Tbsp peanut butter\n1 Tbsp cocoa powder\n1 pinch salt\n1/4 cup mashed banana\n1/4 cup raspberries','1) Place all ingredients, except raspberries and additional toppings in a medium sized bowl.\n2) Stir until well combined and then gently fold in 1/4 cup raspberries.\nStore in a covered, airtight container, like a mason jar, in the fridge overnight.\n4) In the morning, top with additional toppings, if desired, and enjoy!\nSource: https://showmetheyummy.com/chocolate-peanut-butter-jelly-overnight-oats/',5,0),
(5,'Egg muffin cups','1 Tbsp olive oil\n1 cup red pepper, chopped\n1 cup green pepper, chopped\n1 cup yellow onion\n2 cups baby spinach\n1 cup mushrooms\n2 cloves garlic\nsalt to taste\n4 whole eggs\n4 egg whites\nHot sauce (optional)','1) Preheat oven to 350 degrees F.\n2) Grease a standard non stick 12-slot muffin pan with cooking spray and set aside.\n3) Heat a large non stick skillet over medium heat.\n4) Once hot, add in oil, red pepper, green pepper, and onion.\n5) Saute 5-7 minutes, or until peppers are tender.\n6) Add in spinach and mushrooms and cook for an additional 2 minutes.\n7) In the last 30 seconds, add in minced garlic.\n8) Season with salt and remove from heat.\n9) Crack eggs/egg whites into a large 4 cup measuring cup and whisk together.\n10) Stir in cooked veggies.\n11) Pour the egg/veggie mixture evenly into the prepared muffin pan.\n12) Bake for 15-20 minutes, or until the tops are firm to the touch and eggs are cooked.\n13) Cool slightly and serve immediately!\nSource: https://showmetheyummy.com/healthy-egg-muffin-cups/', 5,20),
(6,'Pizza Pasta Bake','12-14 oz rotini pasta\n24 oz. of a pasta sauce of your choice (we recommend marinara)\n2 cups water\n8 oz. shredded mozzarella cheese\n4 oz. pepperoni\n2 Tbsp shredded paarmesan cheese\nFresh basil for garnish','1) Preheat oven to 425°F.\n2) In an ungreased 9x13 baking pan, combine uncooked rotini, pasta sauce, water, 1 1/2 cups mozzarella, and pepperoni, stirring thoroughly to combine.\n3) Top with remaining 1/2 cup mozzarella and parmesan.\n4) Cover tightly with foil.\n5) Bake for 30-40 minutes, until pasta is tender.\n6) Garnish with additional parmesan and fresh basil, if desired.\nSource: https://twohealthykitchens.com/easy-cheesy-5-ingredient-pizza-pasta-bake/',5,30),
(7,'Quinoa Tabbouleh Salad','1 1/2 cups quinoa\n3 cups water\n1 cup diced cherry tomatoes\n1 cup diced english cucumber\n1 cup diced orange bell pepper\n1 cup diced red bell pepper\n1/2 cup parsley\n1/4 cup diced mint\n2 garlic cloves\n4 Tbsp lemon juice\n3 Tbsp olive oil\nSalt and pepper to taste','1) Add quinoa and water to a medium saucepan, cover, and bring to a boil and reduce to simmer for 15 minutes until water is gone.\n2) Let sit for 5 minutes, use a fork to fluff.\n3) Add quinoa to a large bowl along with tomato, cucumber, red pepper, orange pepper, parsley, mint, garlic, lemon juice, olive oil, salt, and pepper.\n4) Toss to mix everything together.\n5) Enjoy!\nSource: https://www.joyfulhealthyeats.com/quinoa-tabbouleh-salad/',5,20),
(8,'One Bowl Brownies','1 3/4 cups all purpose flour\n1/2 cup unsweetened cocoa powder\n1 tsp salt\n2 cups granulated sugar\n5 large eggs\n1 cup canola oil\n1 tsp vanilla extract\n 2 cups semi-sweet chocolate chips','1) Preheat oven to 350 degrees F and grease a 9x13 inch baking pan with cooking spray.\n2) Mix all ingredients together except chocolate chips. \n3) Spread into the prepared pan and sprinkle chocolate chips on top.\n4) Bake for 20-40 minutes (check after 20) or until a tooth pick is inserted and comes out *almost* clean.\n5) Let cool completely before cutting and serving.\nSource: https://showmetheyummy.com/one-bowl-brownies/',5,30),
(9,'Spinach Feta Grilled Cheese','1/2 Tbsp olive oil\n1 clove garlic\n1/4 lb frozen cut spinach\nPinch of salt and pepper\n2 ciabatta rolls\n1 cup shredded mozzarella cheese\n1 oz. feta cheese\nPinch of red pepper flakes (optional)','1) Mince the garlic and add it to a skillet with the olive oil. Cook over medium-low heat for 1-2 minutes, or until it begins to soften. Add the frozen spinach, turn the heat up to medium, and cook for about 5 minutes, or until heated through and most of the excess moisture has evaporated away. Season lightly with salt and pepper.\n2) Cut the rolls in half. Add about 1/4 cup of shredded mozzarella and 1/2 oz. of feta to the bottom half of each roll. Divide the cooked spinach between the two sandwiches, then top with a pinch of red pepper flakes, plus 1/4 more shredded mozzarella on each.\n3) Place the top half of the ciabatta roll on the sandwiches and transfer them to a large non-stick skillet. Fill a large pot with a few inches of water to create weight, then place the pot on top of the sandwiches to press them down like a panini press. Turn the heat on to medium-low and cook until the sandwiches are crispy on the bottom. Carefully flip the sandwiches, place the weighted pot back on top, and cook until crispy on the other side and the cheese is melted. Serve warm.\nSource: https://www.budgetbytes.com/spinach-feta-grilled-cheese/',10,20),
(10,'Bowtie Broccoli Pasta','12 oz. pasta\n1 lb. frozen broccoli florets\n3 Tbsp butter\n3 Tbsp grated parmesan cheese\nSalt and pepper to taste\nPinch of crushed red pepper (optional)','1) Bring a pot of water to a boil, then add the pasta. Boil until the pasta is al dente (7-10 minutes). Add the frozen broccoli florets to the boiling pasta water, turn off the heat, and let sit for 1-2 minutes, or until the broccoli is tender-crisp. Drain the pasta and broccoli in a colander.\n2) Transfer the pasta and broccoli back to the pot (with the heat off) or to a bowl and add the butter. Toss until the butter has melted and coated everything. Add the Parmesan, salt, freshly cracked pepper, and red pepper flakes, then toss to coat again. Taste and adjust seasoning as needed. Serve immediately.\nSource: https://www.budgetbytes.com/bowties-and-broccoli/',5,10)\n