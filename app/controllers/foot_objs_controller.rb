class FootObjsController < ApplicationController
  before_action :set_foot_obj, only: [:show, :edit, :update, :destroy]

  # GET /foot_objs
  # GET /foot_objs.json
  def index
    @foot_objs = FootObj.all
  end

  # GET /foot_objs/1
  # GET /foot_objs/1.json
  def show
  end

  # GET /foot_objs/new
  def new
    @foot_obj = FootObj.new
  end

  # GET /foot_objs/1/edit
  def edit
  end

  # POST /foot_objs
  # POST /foot_objs.json
  def create
    @foot_obj = FootObj.new(foot_obj_params)

    respond_to do |format|
      if @foot_obj.save
        format.html { redirect_to @foot_obj, notice: 'Foot obj was successfully created.' }
        format.json { render :show, status: :created, location: @foot_obj }
      else
        format.html { render :new }
        format.json { render json: @foot_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foot_objs/1
  # PATCH/PUT /foot_objs/1.json
  def update
    respond_to do |format|
      if @foot_obj.update(foot_obj_params)
        format.html { redirect_to @foot_obj, notice: 'Foot obj was successfully updated.' }
        format.json { render :show, status: :ok, location: @foot_obj }
      else
        format.html { render :edit }
        format.json { render json: @foot_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foot_objs/1
  # DELETE /foot_objs/1.json
  def destroy
    @foot_obj.destroy
    respond_to do |format|
      format.html { redirect_to foot_objs_url, notice: 'Foot obj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foot_obj
      @foot_obj = FootObj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foot_obj_params
      params.require(:foot_obj).permit(:name, :enable, :body, :picture)
    end
end
