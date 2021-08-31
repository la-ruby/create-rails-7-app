# Load and launch SimpleCov at the very top of your test/test_helper.rb
# (or spec_helper.rb, rails_helper, cucumber env.rb, or whatever your
# preferred test framework uses)
if ENV["COVERAGE"]
  require 'simplecov'
  SimpleCov.start 'rails' do
    minimum_coverage 100 if ENV['GITHUB_ACTIONS']
  end
end
