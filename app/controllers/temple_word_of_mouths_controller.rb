class TempleWordOfMouthsController < ApplicationController
  before_action :set_temple_word_of_mouth, only: [:show, :edit, :update, :destroy]

  # GET /temple_word_of_mouths
  # GET /temple_word_of_mouths.json
  def index
    @temple_word_of_mouths = TempleWordOfMouth.all
  end

  # GET /temple_word_of_mouths/1
  # GET /temple_word_of_mouths/1.json
  def show
  end

  # GET /temple_word_of_mouths/new
  def new
    @temple_word_of_mouth = TempleWordOfMouth.new
  end

  # GET /temple_word_of_mouths/1/edit
  def edit
  end

  # POST /temple_word_of_mouths
  # POST /temple_word_of_mouths.json
  def create
    @temple_word_of_mouth = TempleWordOfMouth.new(temple_word_of_mouth_params)

    respond_to do |format|
      if @temple_word_of_mouth.save
        format.html { redirect_to @temple_word_of_mouth, notice: 'Temple word of mouth was successfully created.' }
        format.json { render :show, status: :created, location: @temple_word_of_mouth }
      else
        format.html { render :new }
        format.json { render json: @temple_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temple_word_of_mouths/1
  # PATCH/PUT /temple_word_of_mouths/1.json
  def update
    respond_to do |format|
      if @temple_word_of_mouth.update(temple_word_of_mouth_params)
        format.html { redirect_to @temple_word_of_mouth, notice: 'Temple word of mouth was successfully updated.' }
        format.json { render :show, status: :ok, location: @temple_word_of_mouth }
      else
        format.html { render :edit }
        format.json { render json: @temple_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temple_word_of_mouths/1
  # DELETE /temple_word_of_mouths/1.json
  def destroy
    @temple_word_of_mouth.destroy
    respond_to do |format|
      format.html { redirect_to temple_word_of_mouths_url, notice: 'Temple word of mouth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temple_word_of_mouth
      @temple_word_of_mouth = TempleWordOfMouth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temple_word_of_mouth_params
      params.require(:temple_word_of_mouth).permit(:name, :article, :photo, :user_id, :temple_id)
    end
end
