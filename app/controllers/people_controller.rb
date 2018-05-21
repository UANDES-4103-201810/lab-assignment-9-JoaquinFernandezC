class PeopleController < ApplicationController
  def index
    if params[:type] == "actor"
      @people = Actor.all
      @name = "Actors"
    elsif params[:type] == "director"
      @people = Director.all
      @name = "Directors"
    else
       redirect_to people_new_path
    end
  end

  def new

  end

  def create
    if params[:person] == 'director'
      @director = Director.new(people_params)
      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    else
      @actor = Actor.new(people_params)
      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    end

  end

  def people_params
    params.permit(:first_name, :last_name, :birth_date, :description)
  end
end

