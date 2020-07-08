class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
  end

  def show
  end

  def new
    @home = Home.new
    authorize @home
  end

  def create
    @home = Home.new(home_params)
    @home.user = current_user
    authorize @home

    if @home.save
      redirect_to @home, notice: 'home successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @home.update(home_params)
    redirect_to @home
  end

  def destroy
    @home.destroy
    redirect_to root_path
  end

  private

  def set_home
    @home = Home.find(params[:id])
    authorize @home
  end

  def home_params
    all_params = [:address, :postcode, :city, :country, :description, :user]
    params.require(:home).permit(all_params)
  end
end
