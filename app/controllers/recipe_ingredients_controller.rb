class RecipeIngredientsController < ApplicationController
	def create
		@recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
		if @recipe_ingredient.valid?
			@recipe_ingredient.save
		end
	end

	def update
		find_recipe_ingredient
		@recipe_ingredient.update(recipe_ingredient_params)
	end

	def destroy 
        find_recipe_ingredient
        @recipe_ingredient.destroy
	end

	private

	def find_recipe_ingredient
		@recipe_ingredient = RecipeIngredient.find(params[:id])
	end

	def recipe_ingredient_params
		params.require(:recipe_ingredient).permit(:ingredient_id, :recipe_id)
	end

end
