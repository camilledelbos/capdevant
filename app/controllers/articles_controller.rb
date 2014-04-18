class ArticlesController < ApplicationController


	def index
	  if params[:query].present?
	    response = Article.search(params[:query])
	    @articles = response.results.map { |r| r._source }
	  else
	    @articles = Article.all
	  end		
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to root_path
	end

	def show
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
