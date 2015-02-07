Stats::Engine.routes.draw do
  namespace :stats, path: "", constraints: StaffConstraint.new do
    get "categories" => "stats#categories"
  end
end
