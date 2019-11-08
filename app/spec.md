Specifications for the Rails Assessment
Specs:

Using Ruby on Rails for the project 

Done - Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
Done - Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) 
Done - Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) 
Done - Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item         has_many Recipes through Ingredients)  
Done - The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign           keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
Done - Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
Not Done Yet - Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes          URL: /users/most_recipes)
Done - Include signup (how e.g. Devise)
Done - Include login (how e.g. Devise)
Done - Include logout (how e.g. Devise)
? -    Include third party signup/login (how e.g. Devise/OmniAuth)
? -    Include nested resource show or index (URL e.g. users/2/recipes)
? -    Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
Done - Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:

 Done - The application is pretty DRY
 Done - Limited logic in controllers
 Done - Views use helper methods if appropriate
 Done - Views use partials if appropriate