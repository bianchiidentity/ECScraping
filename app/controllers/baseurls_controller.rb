class BaseurlsController < ApplicationController
  before_action :set_baseurl, only: [:show, :edit, :update, :destroy]

  # GET /baseurls
  # GET /baseurls.json
  def index
    @baseurls = Baseurl.all
  end

  # GET /baseurls/1
  # GET /baseurls/1.json
  def show
  end

  # GET /baseurls/new
  def new
    @baseurl = Baseurl.new
  end

  # GET /baseurls/1/edit
  def edit
  end

  # POST /baseurls
  # POST /baseurls.json
  def create
    @baseurl = Baseurl.new(baseurl_params)

    respond_to do |format|
      if @baseurl.save
        format.html { redirect_to @baseurl, notice: 'Baseurl was successfully created.' }
        format.json { render action: 'show', status: :created, location: @baseurl }
      else
        format.html { render action: 'new' }
        format.json { render json: @baseurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baseurls/1
  # PATCH/PUT /baseurls/1.json
  def update
    respond_to do |format|
      if @baseurl.update(baseurl_params)
        format.html { redirect_to @baseurl, notice: 'Baseurl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @baseurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baseurls/1
  # DELETE /baseurls/1.json
  def destroy
    @baseurl.destroy
    respond_to do |format|
      format.html { redirect_to baseurls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baseurl
      @baseurl = Baseurl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baseurl_params
      params.require(:baseurl).permit(:baseurl, :name, :paging_parameter, :paging_max, :paging_add)
    end
end
