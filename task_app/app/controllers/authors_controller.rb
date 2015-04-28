class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def create
        new_author = params.require(:author).permit(:name)
        Author.create(new_author)
        redirect_to "/authors"
	end
end
