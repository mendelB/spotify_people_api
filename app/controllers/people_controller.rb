class PeopleController < ApplicationController

	def index
		people = Person.all
		render json: people
	end

	def create
		person = Person.create(person_params)
		if person.save
			render json: person
		else
			render :json => { :errors => person.errors.full_messages }, :status => 422 
		end
	end

	def show
	end

	def update
	end

	def destroy
	end

	private
	def person_params
		params.require(:person).permit(:name, :favorite_city)
	end

end
