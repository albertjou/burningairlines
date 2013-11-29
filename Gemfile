source 'https://rubygems.org'

gem 'rails', '3.2.14'
gem 'pg'
gem 'carrierwave'
gem 'fog', '~> 1.3.1' #require for carrierwave
gem 'rails_12factor', group: :production

gem 'haml'
gem 'devise'
gem 'activeadmin'
gem "meta_search",    '>= 1.1.0.pre'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'less-rails-bootstrap'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'

  gem 'annotate'

  gem 'quiet_assets'
  gem 'dotenv-rails'
  gem 'better_errors'
  # BetterErrors.editor = :sublime if defined? BetterErrors  (initializer)
  # http://localhost:3000/__better_errors (reports last exception for debugging)
  gem 'binding_of_caller'
  gem 'meta_request'
  # Add RailsPanel extension in the Chrome Web Store
end

gem 'jquery-rails', '2.3.0'