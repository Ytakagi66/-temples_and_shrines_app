class ShrinesWordOfMouthsController < ApplicationController
  before_action :set_shrines_word_of_mouth, only: [:show, :edit, :update, :destroy]

  # GET /shrines_word_of_mouths
  # GET /shrines_word_of_mouths.json
  def index
    @shrines_word_of_mouths = ShrinesWordOfMouth.all
  end

  # GET /shrines_word_of_mouths/1
  # GET /shrines_word_of_mouths/1.json
  def show
  end

  # GET /shrines_word_of_mouths/new
  def new
    @shrines_word_of_mouth = ShrinesWordOfMouth.new
  end

  # GET /shrines_word_of_mouths/1/edit
  def edit
  end

  # POST /shrines_word_of_mouths
  # POST /shrines_word_of_mouths.json
  def create
    @shrines_word_of_mouth = ShrinesWordOfMouth.new(shrines_word_of_mouth_params)

    respond_to do |format|
      if @shrines_word_of_mouth.save
        format.html { redirect_to @shrines_word_of_mouth, notice: 'Shrines word of mouth was successfully created.' }
        format.json { render :show, status: :created, location: @shrines_word_of_mouth }
      else
        format.html { render :new }
        format.json { render json: @shrines_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shrines_word_of_mouths/1
  # PATCH/PUT /shrines_word_of_mouths/1.json
  def update
    respond_to do |format|
      if @shrines_word_of_mouth.update(shrines_word_of_mouth_params)
        format.html { redirect_to @shrines_word_of_mouth, notice: 'Shrines word of mouth was successfully updated.' }
        format.json { render :show, status: :ok, location: @shrines_word_of_mouth }
      else
        format.html { render :edit }
        format.json { render json: @shrines_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shrines_word_of_mouths/1
  # DELETE /shrines_word_of_mouths/1.json
  def destroy
    @shrines_word_of_mouth.destroy
    respond_to do |format|
      format.html { redirect_to shrines_word_of_mouths_url, notice: 'Shrines word of mouth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shrines_word_of_mouth
      @shrines_word_of_mouth = ShrinesWordOfMouth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shrines_word_of_mouth_params
      params.require(:shrines_word_of_mouth).permit(:name, :article, :photo, :user_id, :shrine_id)
    end
end
