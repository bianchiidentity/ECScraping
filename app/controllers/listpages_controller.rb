class ListpagesController < ApplicationController
  before_action :set_listpage, only: [:show, :edit, :update, :destroy, :extract2]

  # GET /listpages
  # GET /listpages.json
  def index
    @listpages = Listpage.all
  end

  # GET /listpages/1
  # GET /listpages/1.json
  def show
  end

  # GET /listpages/new
  def new
    @listpage = Listpage.new
  end

  # GET /listpages/1/edit
  def edit
  end

  # POST /listpages
  # POST /listpages.json
  def create
    @listpage = Listpage.new(listpage_params)

    respond_to do |format|
      if @listpage.save
        format.html { redirect_to @listpage, notice: 'Listpage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @listpage }
      else
        format.html { render action: 'new' }
        format.json { render json: @listpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listpages/1
  # PATCH/PUT /listpages/1.json
  def update
    respond_to do |format|
      if @listpage.update(listpage_params)
        format.html { redirect_to @listpage, notice: 'Listpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @listpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listpages/1
  # DELETE /listpages/1.json
  def destroy
    @listpage.destroy
    respond_to do |format|
      format.html { redirect_to listpages_url }
      format.json { head :no_content }
    end
  end


    #ここに基点ページから全ページURLを抽出するプログラムを書く  
  def extract2
    @urls = @listpage.extract_detail_urls
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listpage
      @listpage = Listpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listpage_params
      params.require(:listpage).permit(:name, :url, :paging_parameter, :paging_max, :paging_add, :link_get_tag, :link_get_attribute, :link_get_value, :keyword, :details_pages, :csvname)
    end

end
