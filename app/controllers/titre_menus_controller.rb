class TitreMenusController < ApplicationController


	def index
		@titre_menus = TitreMenu.all 
	end

	def new
		@titre_menus = TitreMenu.all
		@titre_menu = TitreMenu.new
	end

	def create
		@titre_menu = TitreMenu.new(titre_menu_params)
		@titre_menu.save
		redirect_to titre_menus_path
	end

	def show
		
	end

	def edit
		@titre_menu = TitreMenu.find(params[:id])
	end

	def update
		@titre_menu = TitreMenu.find(params[:id])
		@titre_menu.update(titre_menu_params)
		redirect_to titre_menus_path
	end

	def destroy
		@titre_menu = TitreMenu.find(params[:id])
		@titre_menu.destroy
		redirect_to titre_menus_path
	end	

	private

	def titre_menu_params
		params.require(:titre_menu).permit(:name)
	end		
end
