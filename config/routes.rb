Stats::Engine.routes.draw do
  namespace :stats, constraints: StaffConstraint.new do
    get "" => "admin_stats#index"
  end
end
