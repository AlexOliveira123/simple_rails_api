class ApiBase
  BASE_URL = 'https://raw.githubusercontent.com/akabab/superhero-api/master/api'
  def initialize
    @client = RestClient
  end

  def get_all_heroes
    response = @client.get "#{BASE_URL}/all.json"
    raise Exceptions::ApiBase::GetSuperError if response.code != 200

    JSON.parse(response.body)
  end
end
