class ReceptionsController < ApplicationController
  def new
    @reception = Reception.new
  end

  def create
    @reception = Reception.new(reception_params)
    if @reception.save
      redirect_to '/receptions/new'
    else
      redirect_to '/receptions/new'
    end
  end

  private

    def reception_params
      params.require(:reception).permit(:name, :purpose, :organization)
    end
end
