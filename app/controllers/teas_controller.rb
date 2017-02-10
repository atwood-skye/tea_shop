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
      redirect_to teas_path
    else
      render :new
    end
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def update
    @tea = Tea.find(params[:id])
    if @tea.update(tea_params)
      redirect_to teas_path
    else
      render :edit
    end
  end

private
  def tea_params
    params.require(:tea).permit(:name, :cost, :country)
  end
end
