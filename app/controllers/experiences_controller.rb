class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[ show edit update destroy ]

  # GET /experiences or /experiences.json
  def index
    @experiences = Experience.all
  end

  # GET /experiences/1 or /experiences/1.json
  def show
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences or /experiences.json
  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: "Experience was successfully created." }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiences/1 or /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: "Experience was successfully updated." }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1 or /experiences/1.json
  def destroy
    @experience.destroy!

    respond_to do |format|
      format.html { redirect_to experiences_path, status: :see_other, notice: "Experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def experience_params
      params.expect(experience: [ :title, :company, :start_date, :end_date, :description ])
    end
end
