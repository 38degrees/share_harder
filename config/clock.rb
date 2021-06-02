require 'clockwork'
require 'sidekiq'
require_relative './boot'
require_relative './environment'

module Clockwork
  every(1.minute, "Calculate correct goal count") { UpdateGoalCountsWorker.perform_async }
end
