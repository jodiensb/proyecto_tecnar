class FacultadesController < ApplicationController

  def index
    @facultades = Facultad.all
  end

  def new
    @facultad = Facultad.new
  end

  def create
    @facultad = Facultad.new(codigo: params[:facultad][:codigo], nombre: params[:facultad][:nombre],
    decano: params[:facultad][:decano], programa_id: params[:facultad][:programa_id])

    if @facultad.save
      redirect_to  new_facultad_path(@facultad), notice: 'Facultad Registrada'

    else
      render :new
    end
  end

  def show
    @facultad = Facultad.find(params[:id])
  end

  def edit
    @facultad = Facultad.find(params[:id])
  end

  def update
    @facultad = Facultad.find(params[:id])

    if @facultad.update(codigo: params[:facultad][:codigo], nombre: params[:facultad][:nombre],
    decano: params[:facultad][:decano], programa_id: params[:facultad][:programa_id])
      redirect_to facultades_path(@facultad), notice: 'Facultad actualizada'
  else
      render :edit
   end
  end

  def destroy
    @facultad = Facultad.find(params[:id])
    @facultad.destroy
      redirect_to facultades_path(@facultad), notice: 'Facultad Eliminada'
  end

end
