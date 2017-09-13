class PersonController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    Person.create(person_params)
    redirect_to thanks_path
  end

  private

  def person_params
    params.require(:person).permit(:email)
  end
end
