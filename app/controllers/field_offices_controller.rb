class FieldOfficesController < ApplicationController
  before_action :set_field_office, only: [:show, :edit, :update, :destroy]

  # GET /field_offices
  # GET /field_offices.json
  def index
    @field_offices = FieldOffice.all
  end

  # GET /field_offices/1
  # GET /field_offices/1.json
  def show
  end

  # GET /field_offices/new
  def new
    @field_office = FieldOffice.new
  end

  # GET /field_offices/1/edit
  def edit
  end

  # POST /field_offices
  # POST /field_offices.json
  def create
    @field_office = FieldOffice.new(field_office_params)

    respond_to do |format|
      if @field_office.save
        format.html { redirect_to @field_office, notice: 'Field office was successfully created.' }
        format.json { render :show, status: :created, location: @field_office }
      else
        format.html { render :new }
        format.json { render json: @field_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_offices/1
  # PATCH/PUT /field_offices/1.json
  def update
    respond_to do |format|
      if @field_office.update(field_office_params)
        format.html { redirect_to @field_office, notice: 'Field office was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_office }
      else
        format.html { render :edit }
        format.json { render json: @field_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_offices/1
  # DELETE /field_offices/1.json
  def destroy
    @field_office.destroy
    respond_to do |format|
      format.html { redirect_to field_offices_url, notice: 'Field office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_office
      @field_office = FieldOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_office_params
      params.require(:field_office).permit(:state, :name)
    end
end
