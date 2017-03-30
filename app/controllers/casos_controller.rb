class CasosController < ApplicationController
  before_action :set_caso, only: [:show, :edit, :update, :destroy]

  # GET /casos
  # GET /casos.json
  def index
    @casos = Caso.all
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'casos/reporte', pdf: 'Reporte', layout: 'pdf.html',
         page_size:    'Letter',
          margin:  {   top:               25,                     # default 10 (mm)
                            bottom:            25,
                            left:              30,
                            right:             30 }

            }
    end
  end

  # GET /casos/1
  # GET /casos/1.json
  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf {
        render template: 'casos/casoespe', pdf: 'Casoespe', layout: 'pdf.html',
          page_size:    'Letter',
          margin:  {   top:               25,                     # default 10 (mm)
                            bottom:            25,
                            left:              30,
                            right:             30 }

            }

    end
  end

  # GET /casos/new
  def new
    @caso = Caso.new
  end

  # GET /casos/1/edit
  def edit
  end

  # POST /casos
  # POST /casos.json
  def create
    @caso = Caso.new(caso_params)

    respond_to do |format|
      if @caso.save
        format.html { redirect_to @caso, notice: 'Caso was successfully created.' }
        format.json { render :show, status: :created, location: @caso }
      else
        format.html { render :new }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casos/1
  # PATCH/PUT /casos/1.json
  def update
    respond_to do |format|
      if @caso.update(caso_params)
        format.html { redirect_to @caso, notice: 'Caso was successfully updated.' }
        format.json { render :show, status: :ok, location: @caso }
      else
        format.html { render :edit }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casos/1
  # DELETE /casos/1.json
  def destroy
    @caso.destroy
    respond_to do |format|
      format.html { redirect_to casos_url, notice: 'Caso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caso
      @caso = Caso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caso_params
      params.require(:caso).permit(:radicado, :nombreimplicado, :tribunal, :estado, :estado, :tribunalquecomunica, :sala, :tipodecision, :segundainstancia, :magistradoponente, :radicado, :nombreyaliaspost, :bloque, :lugardeinfluencia, :lugarexpedicion, :fechaexpedicion, :estadoprovidencia, :secomunico, :fechacomunicacion, :delimitaciondeapartados, :ordenexhorto, :recomendaciones, :direcciongrupo, :tiempodeterminado)
    end
end
