class TranjectionsController < ApplicationController
  before_action :set_tranjection, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :correct_user, only: %i[ edit update destroy ]
 
  #before_action :correct_user, only: [ :index]

  # GET /tranjections or /tranjections.json
  def index

    @tranjections = Tranjection.all
    #@tranjection.company_id=

    #aa=Company.all
    #@tranjection = aa.tranjections.find_by(id: params[:id])
  end

  # GET /tranjections/1 or /tranjections/1.json
  def show
  end

  # GET /tranjections/new
  def new

    if current_user.id == 3

      @tranjection = Tranjection.new
      
    else
      redirect_to tranjections_path, notice: "not authorized." 
      
    end
    
   # @companies = Company.all
  end

  # GET /tranjections/1/edit
  def edit
  end

  # POST /tranjections or /tranjections.json
  def create
    @tranjection = Tranjection.new(tranjection_params)

    #@tranjection.

    respond_to do |format|
      if @tranjection.save
        format.html { redirect_to @tranjection, notice: "Tranjection was successfully created." }
        format.json { render :show, status: :created, location: @tranjection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tranjection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranjections/1 or /tranjections/1.json
  def update
    respond_to do |format|
      if @tranjection.update(tranjection_params)
        format.html { redirect_to @tranjection, notice: "Tranjection was successfully updated." }
        format.json { render :show, status: :ok, location: @tranjection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tranjection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranjections/1 or /tranjections/1.json
  def destroy
    @tranjection.destroy
    respond_to do |format|
      format.html { redirect_to tranjections_url, notice: "Tranjection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tranjection
      @tranjection = Tranjection.find(params[:id])
    end
private
    def correct_company
      
      @tranjection = aa.tranjections.find_by(id: params[:id])
      redirect_to tranjections_path, notice: "not authorized." if @tranjection.nil?
    end

    def correct_user
      #current_user.id == 3
      redirect_to tranjections_path, notice: "not authorized." if current_user.id != 3
    end

    # Only allow a list of trusted parameters through.
    def tranjection_params
      params.require(:tranjection).permit(:tranjectiontype, :uses, :amount,:company_id)
    end
end
