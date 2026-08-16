class TaksController < ApplicationController
  before_action :set_tak, only: %i[ show edit update destroy ]

  # GET /taks
  def index
    @taks = Tak.all.order(created_at: :desc) # โหลดรายการทั้งหมด (เอาอันใหม่ขึ้นก่อน)
    @tak = Tak.new                           # เตรียมไว้สำหรับฟอร์มสร้างใหม่
  end

  # POST /taks
  def create
    @tak = Tak.new(tak_params)

    if @tak.save
      redirect_to taks_path, notice: "Task was successfully created."
    else
      @taks = Tak.all.order(created_at: :desc)
      render :index, status: :unprocessable_entity
    end
  end

  # DELETE /taks/1
  def destroy
    @tak.destroy
    redirect_to taks_path, notice: "Task was successfully deleted."
  end

  private

  def set_tak
    @tak = Tak.find(params[:id])
  end

  def tak_params
    params.require(:tak).permit(:title, :completed)
  end
end