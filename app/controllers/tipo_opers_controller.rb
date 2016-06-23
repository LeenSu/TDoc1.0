class TipoOpersController < ApplicationController
  before_action :set_tipo_oper, only: [:show, :edit, :update, :destroy]

  # GET /tipo_opers
  # GET /tipo_opers.json
  def index
    @tipo_opers = TipoOper.all
  end

  # GET /tipo_opers/1
  # GET /tipo_opers/1.json
  def show
  end

  # GET /tipo_opers/new
  def new
    @tipo_oper = TipoOper.new
  end

  # GET /tipo_opers/1/edit
  def edit
  end

  # POST /tipo_opers
  # POST /tipo_opers.json
  def create
    @tipo_oper = TipoOper.new(tipo_oper_params)

    respond_to do |format|
      if @tipo_oper.save
        format.html { redirect_to @tipo_oper, notice: 'Tipo oper was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_oper }
      else
        format.html { render :new }
        format.json { render json: @tipo_oper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_opers/1
  # PATCH/PUT /tipo_opers/1.json
  def update
    respond_to do |format|
      if @tipo_oper.update(tipo_oper_params)
        format.html { redirect_to @tipo_oper, notice: 'Tipo oper was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_oper }
      else
        format.html { render :edit }
        format.json { render json: @tipo_oper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_opers/1
  # DELETE /tipo_opers/1.json
  def destroy
    @tipo_oper.destroy
    respond_to do |format|
      format.html { redirect_to tipo_opers_url, notice: 'Tipo oper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_oper
      @tipo_oper = TipoOper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_oper_params
      params.require(:tipo_oper).permit(:nombre)
    end
end
