module WelcomeHelper
  def host_name
    "#{request.protocol}#{request.host}:#{request.port}"
  end
end
