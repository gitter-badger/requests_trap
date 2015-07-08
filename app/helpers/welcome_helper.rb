module WelcomeHelper
  def host_name
    "#{request.protocol}#{request.host}"
  end
end
