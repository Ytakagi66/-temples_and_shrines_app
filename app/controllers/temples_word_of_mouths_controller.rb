class TemplesWordOfMouthsController < ApplicationController
  before_action :set_temples_word_of_mouth, only: [:show, :edit, :update, :destroy]

  # GET /temples_word_of_mouths
  # GET /temples_word_of_mouths.json
  def index
    @temples_word_of_mouths = TemplesWordOfMouth.all
  end

  # GET /temples_word_of_mouths/1
  # GET /temples_word_of_mouths/1.json
  def show
  end

  # GET /temples_word_of_mouths/new
  def new
    @temples_word_of_mouth = TemplesWordOfMouth.new
  end

  # GET /temples_word_of_mouths/1/edit
  def edit
  end

  # POST /temples_word_of_mouths
  # POST /temples_word_of_mouths.json
  def create
    @temples_word_of_mouth = TemplesWordOfMouth.new(temples_word_of_mouth_params)

    respond_to do |format|
      if @temples_word_of_mouth.save
        format.html { redirect_to @temples_word_of_mouth, notice: 'Temples word of mouth was successfully created.' }
        format.json { render :show, status: :created, location: @temples_word_of_mouth }
      else
        format.html { render :new }
        format.json { render json: @temples_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temples_word_of_mouths/1
  # PATCH/PUT /temples_word_of_mouths/1.json
  def update
    respond_to do |format|
      if @temples_word_of_mouth.update(temples_word_of_mouth_params)
        format.html { redirect_to @temples_word_of_mouth, notice: 'Temples word of mouth was successfully updated.' }
        format.json { render :show, status: :ok, location: @temples_word_of_mouth }
      else
        format.html { render :edit }
        format.json { render json: @temples_word_of_mouth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temples_word_of_mouths/1
  # DELETE /temples_word_of_mouths/1.json
  def destroy
    @temples_word_of_mouth.destroy
    respond_to do |format|
      format.html { redirect_to temples_word_of_mouths_url, notice: 'Temples word of mouth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temples_word_of_mouth
      @temples_word_of_mouth = TemplesWordOfMouth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temples_word_of_mouth_params
      params.require(:temples_word_of_mouth).permit(:name, :article, :photo, :user_id, :temple_id)
    end
end
