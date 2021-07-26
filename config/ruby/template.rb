def add_gems
  gem 'colorize'
  gem 'time'

  gem_group :development do
    gem 'interactive_editor'
    gem 'rspec-rails'
    gem 'guard'
    gem 'guard-rspec'
    gem 'rubocop'
    gem 'rubocop-rails', require: false
    gem 'rubocop-rspec'
  end
end

printf "---\n\n..." > logs/build.yml
run "bundle install"
