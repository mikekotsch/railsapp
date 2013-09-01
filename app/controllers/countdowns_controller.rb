class CountdownsController < ApplicationController
  before_action :set_countdown, only: [:show, :edit, :update, :destroy]

  # GET /countdowns
  # GET /countdowns.json
  def index
    @countdowns = Countdown.all
  end

  # GET /countdowns/1
  # GET /countdowns/1.json
  def show
  end

  # GET /countdowns/new
  def new
    @countdown = Countdown.new
  end

  # GET /countdowns/1/edit
  def edit
  end

  # POST /countdowns
  # POST /countdowns.json
  def create
    @countdown = Countdown.new(countdown_params)

    respond_to do |format|
      if @countdown.save
        format.html { redirect_to @countdown, notice: 'Countdown was successfully created.' }
        format.json { render action: 'show', status: :created, location: @countdown }
      else
        format.html { render action: 'new' }
        format.json { render json: @countdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countdowns/1
  # PATCH/PUT /countdowns/1.json
  def update
    respond_to do |format|
      if @countdown.update(countdown_params)
        format.html { redirect_to @countdown, notice: 'Countdown was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @countdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countdowns/1
  # DELETE /countdowns/1.json
  def destroy
    @countdown.destroy
    respond_to do |format|
      format.html { redirect_to countdowns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countdown
      @countdown = Countdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def countdown_params
      params.require(:countdown).permit(:title, :time, :picture, :link)
    end
end
