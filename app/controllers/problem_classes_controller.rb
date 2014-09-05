class ProblemClassesController < ApplicationController
  before_action :set_problem_class, only: [:show, :edit, :update, :destroy]

  # GET /problem_classes
  # GET /problem_classes.json
  def index
    @problem_classes = ProblemClass.all
  end

  # GET /problem_classes/1
  # GET /problem_classes/1.json
  def show
  end

  # GET /problem_classes/new
  def new
    @problem_class = ProblemClass.new
  end

  # GET /problem_classes/1/edit
  def edit
  end

  # POST /problem_classes
  # POST /problem_classes.json
  def create
    @problem_class = ProblemClass.new(problem_class_params)

    respond_to do |format|
      if @problem_class.save
        format.html { redirect_to @problem_class, notice: 'Problem class was successfully created.' }
        format.json { render :show, status: :created, location: @problem_class }
      else
        format.html { render :new }
        format.json { render json: @problem_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problem_classes/1
  # PATCH/PUT /problem_classes/1.json
  def update
    respond_to do |format|
      if @problem_class.update(problem_class_params)
        format.html { redirect_to @problem_class, notice: 'Problem class was successfully updated.' }
        format.json { render :show, status: :ok, location: @problem_class }
      else
        format.html { render :edit }
        format.json { render json: @problem_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_classes/1
  # DELETE /problem_classes/1.json
  def destroy
    @problem_class.destroy
    respond_to do |format|
      format.html { redirect_to problem_classes_url, notice: 'Problem class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem_class
      @problem_class = ProblemClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_class_params
      params.require(:problem_class).permit(:name)
    end
end
