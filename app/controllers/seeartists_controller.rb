class SeeartistsController < ApplicationController
  before_action :set_seeartist, only: [:show, :edit, :update, :destroy]

  # GET /seeartists
  # GET /seeartists.json
  def index
    @seeartists = Seeartist.all
  end

  # GET /seeartists/1
  # GET /seeartists/1.json
  def show
  end

  # GET /seeartists/new
  def new
    @seeartist = Seeartist.new
  end

  # GET /seeartists/1/edit
  def edit
  end

  # POST /seeartists
  # POST /seeartists.json
  def create
    @seeartist = Seeartist.new(seeartist_params)

    respond_to do |format|
      if @seeartist.save
        format.html { redirect_to @seeartist, notice: 'Seeartist was successfully created.' }
        format.json { render :show, status: :created, location: @seeartist }
      else
        format.html { render :new }
        format.json { render json: @seeartist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seeartists/1
  # PATCH/PUT /seeartists/1.json
  def update
    respond_to do |format|
      if @seeartist.update(seeartist_params)
        format.html { redirect_to @seeartist, notice: 'Seeartist was successfully updated.' }
        format.json { render :show, status: :ok, location: @seeartist }
      else
        format.html { render :edit }
        format.json { render json: @seeartist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seeartists/1
  # DELETE /seeartists/1.json
  def destroy
    @seeartist.destroy
    respond_to do |format|
      format.html { redirect_to seeartists_url, notice: 'Seeartist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeartist
      @seeartist = Seeartist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seeartist_params
      params[:seeartist]
    end
end



