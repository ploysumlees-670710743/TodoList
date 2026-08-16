class TaksController < ApplicationController
  before_action :set_tak, only: %i[ show edit update destroy ]

  # GET /taks or /taks.json
  def index
    @taks = Tak.all
  end

  # GET /taks/1 or /taks/1.json
  def show
  end

  # GET /taks/new
  def new
    @tak = Tak.new
  end

  # GET /taks/1/edit
  def edit
  end

  # POST /taks or /taks.json
  def create
    @tak = Tak.new(tak_params)

    respond_to do |format|
      if @tak.save
        format.html { redirect_to taks_path, notice: "Tak was successfully created." }
        format.json { render :show, status: :created, location: @tak }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @tak.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /taks/1 or /taks/1.json
  def update
    respond_to do |format|
      if @tak.update(tak_params)
        format.html { redirect_to @tak, notice: "Tak was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tak }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @tak.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /taks/1 or /taks/1.json
  def destroy
    @tak.destroy!

    respond_to do |format|
      format.html { redirect_to taks_path, notice: "Tak was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tak
      @tak = Tak.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tak_params
      params.expect(tak: [ :title, :completed ])
    end
end
