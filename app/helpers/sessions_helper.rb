module SessionsHelper
  #ブラウザ内の一時cookiesに暗号化済みのroomIDを格納する
  def log_in(room)
    session[:room_id] = room.id
  end

  # ログインしているユーザーがいたら、ユーザーを代入する
  def current_room
    if session[:room_id]
      @current_room ||= Room.find_by(id: session[:room_id])
    end
  end
end
