class InformesController < ApplicationController
  before_action :set_informe, only: [:show, :edit, :bajaresi,:update, :destroy]
  
  # GET /informes
  # GET /informes.json
  def index
    
    @informes = Informe.all
    respond_to do |format|
      format.html
      format.json
      format.pdf {
        render template: 'informes/inform', pdf: 'inform', layout: 'pdf.html',
          page_size:    'Letter',
          margin:  {   top:               25,                     # default 10 (mm)
                            bottom:            25,
                            left:              30,
                            right:             30 }

            }
  end
end

  # GET /informes/1
  # GET /informes/1.json
  def show



respond_to do |format|
      format.html
      format.json
      format.pdf {
        render template: 'informes/informpdf', pdf: 'informpdf', layout: 'pdf.html',
          page_size:    'Letter',
          margin:  {   top:               25,                     # default 10 (mm)
                            bottom:            25,
                            left:              30,
                            right:             30 }

            }
end
  end

  # GET /informes/new
  def new
    @informe = Informe.new

  end
 # GET /informes/1
  # GET /informes/1.json



  # GET /informes/1/edit
  def edit
  end

  # POST /informes
  # POST /informes.json
  def create
    @informe = Informe.new(informe_params)

    respond_to do |format|
      if @informe.save
        format.html { redirect_to @informe, notice: 'Informe was successfully created.' }
        format.json { render :show, status: :created, location: @informe }

      else
        format.html { render :new }
        format.json { render json: @informe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informes/1
  # PATCH/PUT /informes/1.json
  def update

 
    respond_to do |format|
      if @informe.update(informe_params)
        format.html { redirect_to @informe, notice: 'Informe was successfully updated.' }
        format.json { render :show, status: :ok, location: @informe }
      else
        format.html { render :edit }
        format.json { render json: @informe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informes/1
  # DELETE /informes/1.json
  def destroy
    @informe.destroy
    respond_to do |format|
      format.html { redirect_to casos_url, notice: 'Informe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informe
      @informe = Informe.find(params[:id])
      
    end

    def get_caso
      @casos = Casos.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def informe_params

      params.require(:informe).permit(:idcaso, :fecha, :lugar, :resumen, :fechares, :descripcion, :entidad, :pdfreci, :recirespo, :fechaentre, :entredescr, :entidadentre, :pdfentre, :respondidoentre, :descripcionob, :fechaobs, :cumplido, :fechaau, :descrup)
    end
end
