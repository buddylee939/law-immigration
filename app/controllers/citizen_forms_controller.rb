class CitizenFormsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_citizen_form, only: [:show, :edit, :update, :destroy]

  # GET /citizen_forms
  # GET /citizen_forms.json
  def index
    @citizen_forms = CitizenForm.all
  end

  # GET /citizen_forms/1
  # GET /citizen_forms/1.json
  def show
  end

  # GET /citizen_forms/new
  def new
    @citizen_form = CitizenForm.new
  end

  # GET /citizen_forms/1/edit
  def edit
  end

  # POST /citizen_forms
  # POST /citizen_forms.json
  def create
    @citizen_form = CitizenForm.new(citizen_form_params)
    @citizen_form.user_id = current_user.id

    respond_to do |format|
      if @citizen_form.save
        format.html { redirect_to @citizen_form, notice: 'Citizen form was successfully created.' }
        format.json { render :show, status: :created, location: @citizen_form }
      else
        format.html { render :new }
        format.json { render json: @citizen_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citizen_forms/1
  # PATCH/PUT /citizen_forms/1.json
  def update
    respond_to do |format|
      if @citizen_form.update(citizen_form_params)
        format.html { redirect_to @citizen_form, notice: 'Citizen form was successfully updated.' }
        format.json { render :show, status: :ok, location: @citizen_form }
      else
        format.html { render :edit }
        format.json { render json: @citizen_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citizen_forms/1
  # DELETE /citizen_forms/1.json
  def destroy
    @citizen_form.destroy
    respond_to do |format|
      format.html { redirect_to citizen_forms_url, notice: 'Citizen form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citizen_form
      @citizen_form = CitizenForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citizen_form_params
      params.require(:citizen_form).permit(:name, :date_of_birth, :bio, :twitter, :github, :website, :user_id)
    end
end
