module Stats
  class AdminStatsController < Admin::AdminController
    def index
      stats = {:is_leo_amazing => true}
      render json: stats.to_json
    end
  end
end
