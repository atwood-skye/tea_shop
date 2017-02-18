class TeasController < ApplicationController
  def index
    @teas = Tea.all
  end

  def show
    @tea = Tea.find(params[:id])
  end

  def new
    @tea = Tea.new
  end

  def create
    @tea = Tea.new(tea_params)
    if @tea.save
      flash[:notice] = "Tea successfully added!"
      redirect_to teas_path
    else
      flash[:alert] = 'There was an issue adding your tea. Please try again.'
      render :new
    end
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def update
    @tea = Tea.find(params[:id])
    if @tea.update(tea_params)
      flash[:notice] = "Tea successfully updated!"
      redirect_to teas_path
    else
      flash[:alert] = "There was an issue updating this tea. Please try again."
      render :edit
    end
  end

  def destroy
    @tea = Tea.find(params[:id])
    @tea.destroy
    redirect_to teas_path
  end

private
  def tea_params
    params.require(:tea).permit(:name, :cost, :country)
  end
end
