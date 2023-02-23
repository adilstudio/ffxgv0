class TeamEventsController < ApplicationController
  before_action :set_team_event, only: %i[ show edit update destroy ]

  # GET /team_events or /team_events.json
  def index
    @team_events = TeamEvent.all
  end

  # GET /team_events/1 or /team_events/1.json
  def show
  end

  # GET /team_events/new
  def new
    @team_event = TeamEvent.new
  end

  # GET /team_events/1/edit
  def edit
  end

  # POST /team_events or /team_events.json
  def create
    @team_event = TeamEvent.new(team_event_params)

    respond_to do |format|
      if @team_event.save
        format.html { redirect_to team_event_url(@team_event), notice: "Team event was successfully created." }
        format.json { render :show, status: :created, location: @team_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_events/1 or /team_events/1.json
  def update
    respond_to do |format|
      if @team_event.update(team_event_params)
        format.html { redirect_to team_event_url(@team_event), notice: "Team event was successfully updated." }
        format.json { render :show, status: :ok, location: @team_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_events/1 or /team_events/1.json
  def destroy
    @team_event.destroy

    respond_to do |format|
      format.html { redirect_to team_events_url, notice: "Team event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_event
      @team_event = TeamEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_event_params
      params.require(:team_event).permit(:type, :detail, :comments, :time_elapsed, :time_extra, :fixture_api_id, :team_api_id, :player_api_id, :assist_player_api_id)
    end
end
