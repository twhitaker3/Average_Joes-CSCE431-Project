module FormHelper
  def setup_request(performance_request)
    performance_request.address || Address.new
    performance_request
  end
end
