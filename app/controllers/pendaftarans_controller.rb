class PendaftaransController < ApplicationController
  before_action :set_pendaftaran, only: [:show, :edit, :update, :destroy]

  # GET /pendaftarans
  # GET /pendaftarans.json
  def index
    @pendaftarans = Pendaftaran.all
  end

  # GET /pendaftarans/1
  # GET /pendaftarans/1.json
  def show
  end

  # GET /pendaftarans/new
  def new
    @pendaftaran = Pendaftaran.new
  end

  # GET /pendaftarans/1/edit
  def edit
  end

  # POST /pendaftarans
  # POST /pendaftarans.json
  def create
    @pendaftaran = Pendaftaran.new(pendaftaran_params)

    respond_to do |format|
      if @pendaftaran.save
        format.html { redirect_to @pendaftaran, notice: 'Pendaftaran was successfully created.' }
        format.json { render :show, status: :created, location: @pendaftaran }
      else
        format.html { render :new }
        format.json { render json: @pendaftaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pendaftarans/1
  # PATCH/PUT /pendaftarans/1.json
  def update
    respond_to do |format|
      if @pendaftaran.update(pendaftaran_params)
        format.html { redirect_to @pendaftaran, notice: 'Pendaftaran was successfully updated.' }
        format.json { render :show, status: :ok, location: @pendaftaran }
      else
        format.html { render :edit }
        format.json { render json: @pendaftaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pendaftarans/1
  # DELETE /pendaftarans/1.json
  def destroy
    @pendaftaran.destroy
    respond_to do |format|
      format.html { redirect_to pendaftarans_url, notice: 'Pendaftaran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pendaftaran
      @pendaftaran = Pendaftaran.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pendaftaran_params
      params.require(:pendaftaran).permit(:nama, :alamat, :hobi, :no_hp)
    end
end
