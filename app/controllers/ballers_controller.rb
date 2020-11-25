class BallersController < ApplicationController
  def index
    @ballers = Baller.all
  end

  def show
    @baller = Baller.find(params[:id])
  end

  def new
    @baller = Baller.new
  end

  def create
    @baller = Baller.new(baller_params)
    if @baller.save
      redirect_to baller_path(@baller)
    else
      render :new
    end
  end

  def edit
    @baller = Baller.find(params[:id])
  end

  def update
    @baller = Baller.find(params[:id])
    if @baller.update(baller_params)
      redirect_to baller_path(@baller)
    else
      render :edit
    end
  end

  def destroy
    @baller =  Baller.find(params[:id])
    @baller.destroy
    redirect_to ballers_path
  end

  private

  def baller_params
    params.require(:baller).permit(:name, :age)
  end
end
