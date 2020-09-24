module SessionsHelper
  #ブラウザ内の一時cookiesに暗号化済みのroomID
  def log_in(room)
    session[:room_id] = room.id
  end
end
