class DetailpagesController < ApplicationController
  before_action :set_detailpage, only: [:show, :edit, :update, :destroy]

  # GET /detailpages
  # GET /detailpages.json
  def index
    @detailpages = Detailpage.all
  end

  # GET /detailpages/1
  # GET /detailpages/1.json
  def show
  end

  # GET /detailpages/new
  def new
    @detailpage = Detailpage.new
  end

  # GET /detailpages/1/edit
  def edit
  end

  # POST /detailpages
  # POST /detailpages.json
  def create
    @detailpage = Detailpage.new(detailpage_params)

    respond_to do |format|
      if @detailpage.save
        format.html { redirect_to @detailpage, notice: 'Detailpage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detailpage }
      else
        format.html { render action: 'new' }
        format.json { render json: @detailpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detailpages/1
  # PATCH/PUT /detailpages/1.json
  def update
    respond_to do |format|
      if @detailpage.update(detailpage_params)
        format.html { redirect_to @detailpage, notice: 'Detailpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detailpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailpages/1
  # DELETE /detailpages/1.json
  def destroy
    @detailpage.destroy
    respond_to do |format|
      format.html { redirect_to detailpages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detailpage
      @detailpage = Detailpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detailpage_params
      params.require(:detailpage).permit(:detail_url, :need_propertys, :property_get_rules, :get_property)
    end
end
