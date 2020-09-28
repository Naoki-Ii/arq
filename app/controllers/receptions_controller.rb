class ReceptionsController < ApplicationController
  before_action :logged_in_room, only: [:index]
  MAX_DISPLAY = 10

  def new
    @reception = Reception.new
  end

  def create
    @reception = Reception.new(reception_params)
    if @reception.save
      flash[:notice] = '受付が完了しました - 123番へお電話ください'
      redirect_to '/receptions/new'
    else
      flash[:alert] = '記入/選択漏れがあります - 名前と訪問理由をご記入お願いします'
      redirect_to '/receptions/new'
    end
  end

  def index
    @receptions = Reception.order(created_at: :ASC).page(params[:page]).per(MAX_DISPLAY)
  end

  private

    def reception_params
      params.require(:reception).permit(:name, :purpose, :organization)
    end

    def logged_in_room
      unless logged_in?
        flash[:alert] = "ログインが必要です"
        redirect_to login_path
      end
    end
end
