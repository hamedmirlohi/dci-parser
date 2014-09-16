class ParsedFilesController < ApplicationController
  before_action :set_parsed_file, only: [:show, :edit, :update, :destroy]

  # GET /parsed_files
  # GET /parsed_files.json
  def index
    @parsed_files = ParsedFile.all
  end

  # GET /parsed_files/1
  # GET /parsed_files/1.json
  def show
  end

  # GET /parsed_files/new
  def new
    @parsed_file = ParsedFile.new
  end

  # GET /parsed_files/1/edit
  def edit
  end

  # POST /parsed_files
  # POST /parsed_files.json
  def create
    @parsed_file = ParsedFile.new(parsed_file_params)

    respond_to do |format|
      if @parsed_file.save
        format.html { redirect_to @parsed_file, notice: 'Parsed file was successfully created.' }
        format.json { render :show, status: :created, location: @parsed_file }
      else
        format.html { render :new }
        format.json { render json: @parsed_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parsed_files/1
  # PATCH/PUT /parsed_files/1.json
  def update
    respond_to do |format|
      if @parsed_file.update(parsed_file_params)
        format.html { redirect_to @parsed_file, notice: 'Parsed file was successfully updated.' }
        format.json { render :show, status: :ok, location: @parsed_file }
      else
        format.html { render :edit }
        format.json { render json: @parsed_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parsed_files/1
  # DELETE /parsed_files/1.json
  def destroy
    @parsed_file.destroy
    respond_to do |format|
      format.html { redirect_to parsed_files_url, notice: 'Parsed file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parsed_file
      @parsed_file = ParsedFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parsed_file_params
      params.require(:parsed_file).permit(:name, :content)
    end
end
