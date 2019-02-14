class FormN400sController < ApplicationController
  before_action :authenticate_user!
  before_action :set_form_n400, only: [:show, :edit, :update, :destroy]

  # GET /form_n400s
  # GET /form_n400s.json
  def index
    @form_n400s = FormN400.all
  end

  # GET /form_n400s/1
  # GET /form_n400s/1.json
  def show
  end

  # GET /form_n400s/new
  def new
    @form_n400 = FormN400.new
  end

  # GET /form_n400s/1/edit
  def edit
  end

  # POST /form_n400s
  # POST /form_n400s.json
  def create
    @form_n400 = FormN400.new(form_n400_params)
    @form_n400.user_id = current_user.id

    respond_to do |format|
      if @form_n400.save
        format.html { redirect_to @form_n400, notice: 'Form n400 was successfully created.' }
        format.json { render :show, status: :created, location: @form_n400 }
      else
        format.html { render :new }
        format.json { render json: @form_n400.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_n400s/1
  # PATCH/PUT /form_n400s/1.json
  def update
    respond_to do |format|
      if @form_n400.update(form_n400_params)
        format.html { redirect_to @form_n400, notice: 'Form n400 was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_n400 }
      else
        format.html { render :edit }
        format.json { render json: @form_n400.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_n400s/1
  # DELETE /form_n400s/1.json
  def destroy
    @form_n400.destroy
    respond_to do |format|
      format.html { redirect_to form_n400s_url, notice: 'Form n400 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_n400
      @form_n400 = FormN400.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_n400_params
      params.require(:form_n400).permit(:nine_digit_number, :citizen_5_years, 
                                        :citizen_3_years, :citizen_spouse, 
                                        :military_service, :other, :user_id,
                                        :legal_last_name, :legal_first_name,
                                        :legal_middle_name, :resident_last_name,
                                        :resident_first_name, :resident_middle_name,
                                        :social_security, :uscis_number, :gender,
                                        :date_of_birth, :date_permanent_resident,
                                        :birth_country, :citizen_country, :physical_disability,
                                        :above_50, :above_55, :above_65, :field_office_id)
    end
end
