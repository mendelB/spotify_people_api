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
		person = Person.find_by(id: params[:id])
		if person
			render json: person
		else
			head 404 
		end
	end

	def update
		person = Person.find_by(id: params[:id])
		if person 
			if person.update(person_params)
				render json: person
			else 
				render :json => { :errors => person.errors.full_messages }, :status => 422 
			end
		else
			head 404 
		end
	end

	def destroy
		person = Person.find_by(id: params[:id])
		if person
			person.destroy
			head :ok
		else
			head 404
		end
	end

	private
	def person_params
		params.require(:person).permit(:name, :favorite_city)
	end

end
