class CertificatesController < ApplicationController
  before_action :set_certificate, only: [:show, :edit, :update, :destroy]

#  respond_to :docx
#  def my_action
#  respond_with(@object, content: '<html><head></head><body><p>Hello</p></body></html>', filename: 'my_file.docx')
#end
  # GET /certificates
  # GET /certificates.json
  def index
    @certificates = Certificate.all
  end

  # GET /certificates/1
  # GET /certificates/1.json
  def show
  end

  # GET /certificates/new
  def new
    @certificate = Certificate.new
  end

  # GET /certificates/1/edit
  def edit
  end

  # POST /certificates
  # POST /certificates.json
  def create
    @certificate = Certificate.new(certificate_params)

    respond_to do |format|
      if
      Certificate.find_by_patient_id(@certificate.patient_id) == nil || Certificate.find_by_doctor_id(@certificate.doctor_id) == nil ||
      Certificate.find_by_income_date(@certificate.income_date) == nil || Certificate.find_by_discharge_date(@certificate.discharge_date) == nil
      @certificate.save
        format.html { redirect_to certificates_url, notice: 'Довідка створена.' }
        format.json { render :show, status: :created, location: @certificate }
      else
        format.html { render :new }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificates/1
  # PATCH/PUT /certificates/1.json
  def update
    respond_to do |format|
      if @certificate.update(certificate_params)
        format.html { redirect_to certificates_url, notice: 'Довідка редагована.' }
        format.json { render :show, status: :ok, location: @certificate }
      else
        format.html { render :edit }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificates/1
  # DELETE /certificates/1.json
  def destroy
    @certificate.destroy
    respond_to do |format|
      format.html { redirect_to certificates_url, notice: 'Довідка видалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_params
      params.fetch(:certificate).permit(:patient_id, :doctor_id, :income_date, :discharge_date)
    end
end
