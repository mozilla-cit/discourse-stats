# name: stats
# about: plugin which exposes stats we want to show off
# version: 0.0
# authors: Leo McArdle

# load the engine
load File.expand_path('../lib/stats/engine.rb', __FILE__)

# integrate with Discourse
after_initialize do
  require_dependency File.expand_path('../integrate.rb', __FILE__)
end
