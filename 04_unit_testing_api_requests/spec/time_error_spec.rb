require "time_error"

describe TimeError do
  it "returns the differnce in time" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{ "abbreviation": "BST", "client_ip": "2a00:23c5:dd13:8e01:d860:5a94:50d9:b16d", "datetime": "2022-08-24T14:30:55.824656+01:00", "day_of_week": 3, "day_of_year": 236, "dst": true, "dst_from": "2022-03-27T01:00:00+00:00", "dst_offset": 3600, "dst_until": "2022-10-30T01:00:00+00:00", "raw_offset": 0, "timezone": "Europe/London", "unixtime": 1661347855, "utc_datetime": "2022-08-24T13:30:55.824656+00:00", "utc_offset": "+01:00", "week_number": 34 }')
    time_error = TimeError.new(fake_requester)
    fake_time = Time.new(2022, 8, 24, 13, 30, 55, "+00:00")
    result = time_error.error(fake_time)
    expect(result).to eq 0.824656
  end
end
