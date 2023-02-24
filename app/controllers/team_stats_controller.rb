class TeamStatsController < ApplicationController
  before_action :set_team_stat, only: %i[ show edit update destroy ]

  # GET /team_stats or /team_stats.json
  def index
    @team_stats = TeamStat.all
  end

  # GET /team_stats/1 or /team_stats/1.json
  def show
  end

  # GET /team_stats/new
  def new
    @team_stat = TeamStat.new
  end

  # GET /team_stats/1/edit
  def edit
  end

  # POST /team_stats or /team_stats.json
  def create
    @team_stat = TeamStat.new(team_stat_params)

    respond_to do |format|
      if @team_stat.save
        format.html { redirect_to team_stat_url(@team_stat), notice: "Team stat was successfully created." }
        format.json { render :show, status: :created, location: @team_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_stats/1 or /team_stats/1.json
  def update
    respond_to do |format|
      if @team_stat.update(team_stat_params)
        format.html { redirect_to team_stat_url(@team_stat), notice: "Team stat was successfully updated." }
        format.json { render :show, status: :ok, location: @team_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_stats/1 or /team_stats/1.json
  def destroy
    @team_stat.destroy

    respond_to do |format|
      format.html { redirect_to team_stats_url, notice: "Team stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_stat
      @team_stat = TeamStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_stat_params
      params.require(:team_stat).permit(:offsides, :games_minutes, :games_number, :games_position, :games_rating, :games_captain, :games_substitute, :shots_total, :shots_on, :goals_total, :goals_conceded, :goals_assists, :goals_saves, :passes_total, :passes_key, :passes_accuracy, :tackles_total, :tackles_blocks, :tackles_interceptions, :duels_total, :duels_won, :dribbles_attempts, :dribbles_success, :dribbles_past, :fouls_drawn, :fouls_committed, :cards_yellow, :cards_red, :penalty_won, :penalty_commited, :penalty_scored, :penalty_missed, :penalty_saved, :player_api_id, :team_api_id, :fixture_api_id)
    end
end
