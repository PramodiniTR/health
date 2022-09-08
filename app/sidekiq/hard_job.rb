class HardJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
  end
end
