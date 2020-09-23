class SessionsController < ApplicationController
  def new
  end

  def create
    room = Room.find_by(name: params[:session][:name])
    if room && room.authenticate(params[:session][:password])
    else
      flash[:alert] = '名前かパスワードが違います'
      redirect_to '/login'
    end
  end

  def destroy
  end
end
