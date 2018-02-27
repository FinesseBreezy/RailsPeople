class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end
  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def update
    p = Person.find(params[:id])
    p.update(person_params)
    redirect_to '/people'
  end

  def destroy
    p = Person.find(params[:id])
    p.destroy
    redirect_to '/people'
  end
  private

  def person_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
