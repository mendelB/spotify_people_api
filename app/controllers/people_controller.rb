class PeopleController < ApplicationController

	def index
		people = Person.all
		render json: people
	end

	def create
	end

	def show
	end

	def update
	end

	def destroy
	end

end
