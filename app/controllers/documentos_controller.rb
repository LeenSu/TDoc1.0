class DocumentosController < ApplicationController
  before_action :set_documento, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @documentos = Documento.all
    respond_with(@documentos)
  end

  def show
    respond_with(@documento)
  end

  def new
    @documento = Documento.new
    respond_with(@documento)
  end

  def edit
  end

  def create
    @documento = Documento.new(documento_params)
    @documento.save
    respond_with(@documento)
  end

  def update
    @documento.update(documento_params)
    respond_with(@documento)
  end

  def destroy
    @documento.destroy
    respond_with(@documento)
  end

  private
    def set_documento
      @documento = Documento.find(params[:id])
    end

    def documento_params
      params.require(:documento).permit(:num_expediente, :asunto, :folio, :ubic_archivo, :rpta, :firma)
    end
end
