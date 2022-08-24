require "date"
require "json"

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer

  def initialize(requester)
    @requester = requester
  end

  def error(time)
    time_now = "2022-08-24 13:30:55.724656000"
    # time = time_now.to_time

    p "datetime time_now"
    p DateTime.parse(time_now).to_time
    # return get_server_time - DateTime.parse(time_now).to_time
    return get_server_time - time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    p json

    p (json["utc_datetime"])

    p DateTime.parse(json["utc_datetime"])

    p DateTime.parse(json["utc_datetime"]).to_time

    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

# require "net/http"
# time_error = TimeError.new(Net::HTTP)
# p time_error.error
