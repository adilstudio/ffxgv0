class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
=begin
  require 'uri'
  require 'net/http'
  require 'openssl'

  def call_api(endpoint)
    url = URI("https://v3.football.api-sports.io/{endpoint}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'v3.football.api-sports.io'
    request["x-rapidapi-key"] = 'XxXxXxXxXxXxXxXxXxXxXxXx'

    response = http.request(request)
    puts response.read_body
  end
=end
end
