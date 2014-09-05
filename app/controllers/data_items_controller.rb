class DataItemsController < ApplicationController
  before_action :set_data_item, only: [:show, :edit, :update, :destroy]

  # GET /data_items
  # GET /data_items.json
  def index
    @data_items = DataItem.all
  end

  # GET /data_items/1
  # GET /data_items/1.json
  def show
  end

  # GET /data_items/new
  def new
    @data_item = DataItem.new
  end

  # GET /data_items/1/edit
  def edit
  end

  # POST /data_items
  # POST /data_items.json
  def create
    @data_item = DataItem.new(data_item_params)

    respond_to do |format|
      if @data_item.save
        format.html { redirect_to @data_item, notice: 'Data item was successfully created.' }
        format.json { render :show, status: :created, location: @data_item }
      else
        format.html { render :new }
        format.json { render json: @data_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_items/1
  # PATCH/PUT /data_items/1.json
  def update
    respond_to do |format|
      if @data_item.update(data_item_params)
        format.html { redirect_to @data_item, notice: 'Data item was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_item }
      else
        format.html { render :edit }
        format.json { render json: @data_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_items/1
  # DELETE /data_items/1.json
  def destroy
    @data_item.destroy
    respond_to do |format|
      format.html { redirect_to data_items_url, notice: 'Data item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_item
      @data_item = DataItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_item_params
      params.require(:data_item).permit(:name, :data_class_id, :data_source_id)
    end
end
