module Stats
  class StatsController < ApplicationController
    def categories
      stats = [ ]
      Category.all.each do |c|
        stat = c.attributes.slice('id', 'parent_category_id', 'name', 'description', 'topic_count', 'topics_year', 'topics_month', 'topics_week', 'topics_day', 'post_count', 'posts_year', 'posts_month', 'posts_week', 'posts_day')
        stat[:users_tracking] = CategoryUser.where(category: c, notification_level: CategoryUser.notification_levels[:tracking]).count
        stat[:users_watching] = CategoryUser.where(category: c, notification_level: CategoryUser.notification_levels[:watching]).count
        stats << stat
      end
      render json: stats.to_json
    end
  end
end
