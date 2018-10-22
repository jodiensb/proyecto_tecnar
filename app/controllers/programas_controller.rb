class ProgramasController < ApplicationController
  def index
    @programas = Programa.all
  end

  def new
    @programa = Programa.new
  end

  def create
    @programa = Programa.new(codigo: params[:programa][:codigo], nombre: params[:programa][:nombre],
    encargado: params[:programa][:encargado], facultad_id: params[:programa][:facultad_id])

    if @programa.save
      redirect_to new_programa_path(@programa), notice: 'Programa Registrado'

    else
      render :new
    end
  end

  def show
    @programa = Programa.find(params[:id])
  end

  def edit
    @programa = Programa.find(params[:id])
  end

  def update
    @programa = Programa.find(params[:id])

    if @programa.update(codigo: params[:programa][:codigo], nombre: params[:programa][:nombre],
    encargado: params[:programa][:encargado], facultad_id: params[:programa][:facultad_id])
      redirect_to programas_path(@programa), notice: 'Programa Actualizado'
  else
      render :edit
   end
  end

  def destroy
    @programa = Programa.find(params[:id])
    @programa.destroy
      redirect_to programas_path(@programas), notice: 'Programa Eliminado'
  end

end
