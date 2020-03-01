class ShrineWordOfMouthsController < ApplicationController
  before_action :set_shrine_word_of_mouth, only: [:show, :edit, :update, :destroy]

  # GET /shrine_word_of_mouths
  # GET /shrine_word_of_mouths.json
  def index
    @shrine_word_of_mouths = ShrineWordOfMouth.all
  end

  # GET /shrine_word_of_mouths/1
  # GET /shrine_word_of_mouths/1.json
  def show
  end

  # GET /shrine_word_of_mouths/new
  def new
    @shrine_word_of_mouth = ShrineWordOfMouth.new
  end

  # GET /shrine_word_of_mouths/1/edit
  def edit
  end

  # POST /shrine_word_of_mouths
  # POST /shrine_word_of_mouths.json
  def create
    @shrine_word_of_mouth = ShrineWordOfMouth.new(shrine_word_of_mouth_params)

    respond_to do |format|
      if @shrine_word_of_mouth.save
        format.html { redirect_to @shrine_word_of_mouth, notice: 'Shrine word of mouth was successfully created.' }
        format.json { render :show, status: :created, location: @shrine_word_of_mouth }
      else
        format.html { render :new }
        format.json { render json: @shrine_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shrine_word_of_mouths/1
  # PATCH/PUT /shrine_word_of_mouths/1.json
  def update
    respond_to do |format|
      if @shrine_word_of_mouth.update(shrine_word_of_mouth_params)
        format.html { redirect_to @shrine_word_of_mouth, notice: 'Shrine word of mouth was successfully updated.' }
        format.json { render :show, status: :ok, location: @shrine_word_of_mouth }
      else
        format.html { render :edit }
        format.json { render json: @shrine_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shrine_word_of_mouths/1
  # DELETE /shrine_word_of_mouths/1.json
  def destroy
    @shrine_word_of_mouth.destroy
    respond_to do |format|
      format.html { redirect_to shrine_word_of_mouths_url, notice: 'Shrine word of mouth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shrine_word_of_mouth
      @shrine_word_of_mouth = ShrineWordOfMouth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shrine_word_of_mouth_params
      params.require(:shrine_word_of_mouth).permit(:name, :article, :photo, :user_id, :shrine_id)
    end
end
