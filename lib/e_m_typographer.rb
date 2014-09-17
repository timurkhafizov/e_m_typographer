require 'uri'
require 'net/http'
require 'json'

class EMTypographer
  TYPOGRAPHER_REQUEST_URI = URI('http://mdash.ru/api.v1.php')

  def self.apply(text)
    response = send_typographer_post_request(text)

    JSON.parse(response.body)['result'] if response && response.body['result']
  end

  private

  def self.send_typographer_post_request(text)
    return if text.empty?

    request = Net::HTTP.new(TYPOGRAPHER_REQUEST_URI.host, TYPOGRAPHER_REQUEST_URI.port)
    request.post(TYPOGRAPHER_REQUEST_URI.path, "text=#{text}")
  end
end

