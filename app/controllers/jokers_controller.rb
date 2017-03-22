class JokersController < ApplicationController
  before_action :set_joker, only: [:show, :edit, :update, :destroy]

  # GET /jokers
  # GET /jokers.json
  def index
    @jokers = Joker.all
  end

  # GET /jokers/1
  # GET /jokers/1.json
  def show
  end

  # GET /jokers/new
  def new
    @joker = Joker.new
  end

  # GET /jokers/1/edit
  def edit
  end

  # POST /jokers
  # POST /jokers.json
  def create
    @joker = Joker.new(joker_params)

    respond_to do |format|
      if @joker.save
        format.html { redirect_to @joker, notice: 'Joker was successfully created.' }
        format.json { render :show, status: :created, location: @joker }
      else
        format.html { render :new }
        format.json { render json: @joker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jokers/1
  # PATCH/PUT /jokers/1.json
  def update
    respond_to do |format|
      if @joker.update(joker_params)
        format.html { redirect_to @joker, notice: 'Joker was successfully updated.' }
        format.json { render :show, status: :ok, location: @joker }
      else
        format.html { render :edit }
        format.json { render json: @joker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jokers/1
  # DELETE /jokers/1.json
  def destroy
    @joker.destroy
    respond_to do |format|
      format.html { redirect_to jokers_url, notice: 'Joker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joker
      @joker = Joker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joker_params
      params.require(:joker).permit(:user_id, :title, :messages)
    end
end
