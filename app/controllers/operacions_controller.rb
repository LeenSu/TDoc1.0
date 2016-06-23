class OperacionsController < ApplicationController
  before_action :set_operacion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @operacions = Operacion.all
    respond_with(@operacions)
  end

  def show
    respond_with(@operacion)
  end

  def new
    @operacion = Operacion.new
    respond_with(@operacion)
  end

  def edit
  end

  def create
    @operacion = Operacion.new(operacion_params)
    @operacion.save
    respond_with(@operacion)
  end

  def update
    @operacion.update(operacion_params)
    respond_with(@operacion)
  end

  def destroy
    @operacion.destroy
    respond_with(@operacion)
  end

  private
    def set_operacion
      @operacion = Operacion.find(params[:id])
    end

    def operacion_params
      params.require(:operacion).permit(:remitente, :destinatario, :descripcion, :empleado_id, :tipo_oper_id, :documento_id)
    end
end
