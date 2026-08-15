class TasksController < ApplicationController
  # GET /tasks หรือ GET / ( render หน้า index.html.erb )
  def index
  end

  # POST /login ( action รับข้อมูลจากฟอร์มใน index.html.erb )
  def login
    email = params[:email]
    password = params[:password]
    remember_me = params[:remember_me]

    # TODO: ใส่ Logic การตรวจสอบ User / Authentication ที่นี่
    # ตัวอย่าง:
    # user = User.find_by(email: email)
    # if user&.authenticate(password)
    #   session[:user_id] = user.id
    #   redirect_to root_path, notice: "Logged in successfully!"
    # else
    #   flash.now[:alert] = "Invalid email or password"
    #   render :index, status: :unprocessable_entity
    # end
  end
end