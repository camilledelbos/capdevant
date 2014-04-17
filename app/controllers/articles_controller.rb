class ArticlesController < ApplicationController

	def index
		### XXX repetiion de TitreMenu.all ###
		@titre_menus = TitreMenu.all
		@articles = Article.all
	end

	def new
		### XXX repetiion de TitreMenu.all ###
		@titre_menus = TitreMenu.all
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		### XXX deux versions : la plus efficace? ###
		# Article.find(article_params)
		@article.save
		redirect_to root_path
	end

	def show
		### XXX repetiion de TitreMenu.all ###
		@titre_menus = TitreMenu.all
		@article = Article.find(params[:id]) 
	end

	def edit
		
	end

	def update
		
	end

	private

	def article_params
		params.require(:article).permit(:name, :content)
	end	

end
