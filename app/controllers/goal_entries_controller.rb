class GoalEntriesController < ApplicationController
  before_action :set_goal_entry, only: [:show, :edit, :update, :destroy]

  # GET /goal_entries
  # GET /goal_entries.json
  def index
    @goal_entries = GoalEntry.all
  end

  # GET /goal_entries/1
  # GET /goal_entries/1.json
  def show
  end

  # GET /goal_entries/new
  def new
    @goal_entry = GoalEntry.new
  end

  # GET /goal_entries/1/edit
  def edit
  end

  # POST /goal_entries
  # POST /goal_entries.json
  def create
    @goal_entry = GoalEntry.new(goal_entry_params)

    respond_to do |format|
      if @goal_entry.save
        format.html { redirect_to @goal_entry, notice: 'Goal entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @goal_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @goal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_entries/1
  # PATCH/PUT /goal_entries/1.json
  def update
    respond_to do |format|
      if @goal_entry.update(goal_entry_params)
        format.html { redirect_to @goal_entry, notice: 'Goal entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @goal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_entries/1
  # DELETE /goal_entries/1.json
  def destroy
    @goal_entry.destroy
    respond_to do |format|
      format.html { redirect_to goal_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_entry
      @goal_entry = GoalEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_entry_params
      params.require(:goal_entry).permit(:goal_id, :status)
    end
end
