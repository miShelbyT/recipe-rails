class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		find_recipe
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.create(recipe_params)
		if @recipe.valid?
			redirect_to recipe_path(@recipe)
		else
            flash[:recipe_errors] = @recipe.errors.full_messages
            redirect_to new_recipe_path
		end
	end

	def update
		find_recipe
		@recipe.update(recipe_params)
		redirect_to recipe_path(@recipe)
	end

	def edit
		find_recipe
	end

	def destroy 
        find_recipe
        @recipe.destroy
        redirect_to recipes_path
	end

    
	private

	def find_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit(:name, :user_id)
	end

end
