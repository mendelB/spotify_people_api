class PeopleController < ApplicationController
	before_action :set_person, only: [:show, :update, :destroy]


	def index
		people = Person.all
		json_response(people)
	end

	def create
		person = Person.create!(person_params)
		json_response(person, :created)
	end

	def show
		json_response(@person)
	end

	def update
		@person.update(person_params)
		head :no_content
	end

	def destroy
		@person.destroy
		head :no_content
	end

	private
	def person_params
		params.require(:person).permit(:name, :favorite_city)
	end

	def set_person
    	@person = Person.find(params[:id])
  	end

end
