class EstudiantesController < ApplicationController
  def index
    @estudiantes = Estudiante.all
  end

  def new
    @estudiante = Estudiante.new
  end

  def create
    @estudiante = Estudiante.new(codigo: params[:estudiante][:codigo], ingreso: params[:estudiante][:ingreso],
    egreso: params[:estudiante][:egreso], nombre: params[:estudiante][:nombre],
  apellidos: params[:estudiante][:apellidos], facultad_id: params[:estudiante][:facultad_id],
programa_id: params[:estudiante][:programa_id], telefono: params[:estudiante][:telefono],
correo: params[:estudiante][:correo], direccion: params[:estudiante][:direccion])

    if @estudiante.save
      redirect_to  new_estudiante_path(@estudiante), notice: 'Estudiante Registrado'

    else
        render :new
      end
  end

  def show
    @estudiante = Estudiante.find(params[:id])
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  def update
    @estudiante = Estudiante.find(params[:id])

    if @estudiante.update(codigo: params[:estudiante][:codigo], ingreso: params[:estudiante][:ingreso],
    egreso: params[:estudiante][:egreso], nombre: params[:estudiante][:nombre],
  apellidos: params[:estudiante][:apellidos], facultad_id: params[:estudiante][:facultad_id],
programa_id: params[:estudiante][:programa_id], telefono: params[:estudiante][:telefono],
correo: params[:estudiante][:correo], direccion: params[:estudiante][:direccion],)

        redirect_to estudiantes_path(@estudiante), notice: 'Estudiante Actualizado'

      else
        render :edit
       end
  end

  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy
    redirect_to estudiantes_path(@estudiante), notice: 'Estudiante Eliminado'
  end

end
