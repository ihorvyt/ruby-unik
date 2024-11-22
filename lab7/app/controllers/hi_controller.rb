class HiController < ApplicationController
  def index
    @stud = 'Student'
    @message = 'Моє повідомлення прийшло з Контролера'
    @current_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end
end
