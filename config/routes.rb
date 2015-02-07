Stats::Engine.routes.draw do
  namespace :stats, path: "" do
    get "categories" => "stats#categories"
  end
end
