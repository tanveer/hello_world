class HelloworldsController < ApplicationController
  before_action :set_helloworld, only: %i[ show edit update destroy ]

  # GET /helloworlds
  def index
    @helloworlds = Helloworld.all
  end

  # GET /helloworlds/1
  def show
  end

  # GET /helloworlds/new
  def new
    @helloworld = Helloworld.new
  end

  # GET /helloworlds/1/edit
  def edit
  end

  # POST /helloworlds
  def create
    @helloworld = Helloworld.new(helloworld_params)

    if @helloworld.save
      redirect_to @helloworld, notice: "Helloworld was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /helloworlds/1
  def update
    if @helloworld.update(helloworld_params)
      redirect_to @helloworld, notice: "Helloworld was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /helloworlds/1
  def destroy
    @helloworld.destroy
    redirect_to helloworlds_url, notice: "Helloworld was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helloworld
      @helloworld = Helloworld.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def helloworld_params
      params.require(:helloworld).permit(:index)
    end
end
