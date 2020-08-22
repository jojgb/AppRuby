class KursusController < ApplicationController
    def index
      @kursu = Kursu.all
    end

    def show
      @kursu = Kursu.find(params[:id])
    end

    def new
        @kursu = Kursu.new
    end

    def edit
      @kursu = Kursu.find(params[:id])

    end

    def create
        @kursu = Kursu.new(kursu_params)

        respond_to do |format|
            if @kursu.save
              format.html { redirect_to @kursu, notice: 'Kursu was successfully created.' }
              format.json { render :show, status: :created, location: @kursu }
            else
              format.html { render :new }
              format.json { render json: @kursu.errors, status: :unprocessable_entity }
            end
          end
    end

    def update
      @kursu = Kursu.find(params[:id])
      if @kursu.update(kursu_params)
        redirect_to @kursu
      else
        render 'edit'
      end
    end

    def destroy
      @kursu = Kursu.find(params[:id])
      @kursu.destroy
      redirect_to kursus_path
    end

    private
     # Only allow a list of trusted parameters through.
     def kursu_params
        params.require(:kursu).permit(:nama_kursus, :harga_kursus)
     end

end
