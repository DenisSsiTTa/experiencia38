class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :edit, :update, :destroy, :add_ok, :remove_ok]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :index]

  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
  end

  def add_ok
    @user = User.find(current_user.id)
    @tarea.users << @user
    redirect_to tarea_url
  end

  def remove_ok
      user = User.find(current_user.id)
      @tarea.users.delete(user)
      redirect_to tarea_url
  end


  # GET /tareas/1
  # GET /tareas/1.json
  def show
    @users = User.all
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
    format.html { redirect_to tareas_url, notice: 'Próximamente.' }
  end

  # GET /tareas/1/edit
  def edit
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)
    format.html { redirect_to tareas_url, notice: 'Próximamente.' }
    # respond_to do |format|
    #  if @tarea.save
    #    format.html { redirect_to @tarea, notice: 'Tarea was successfully created.' }
    #  else
    #    format.html { render :new }
    #  end
    #end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to @tarea, notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'Tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarea_params
      params.require(:tarea).permit(:title, :description, :ubicacion)
    end
end
