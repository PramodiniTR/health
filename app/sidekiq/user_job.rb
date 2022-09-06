class UserJob
  include Sidekiq::Job

  def perform()
  end
  
end
