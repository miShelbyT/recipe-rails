class IngredientsController < ApplicationController
    def index
		@ingredients = Ingredient.all
	end

	def show
		find_ingredient
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.create(ingredient_params)
		if @ingredient.valid?
			redirect_to ingredient_path(@ingredient)
		else
            flash[:ingredient_errors] = @ingredient.errors.full_messages
            redirect_to new_ingredient_path
		end
	end

	def update
		find_ingredient
		@ingredient.update(ingredient_params)
		redirect_to ingredient_path(@ingredient)
	end

	def edit
		find_ingredient
	end

	def destroy 
        find_ingredient
        @ingredient.destroy
        redirect_to ingredients_path
	end

    
	private

	def find_ingredient
		@ingredient = Ingredient.find(params[:id])
	end

	def ingredient_params
		params.require(:ingredient).permit(:name)
	end
end
