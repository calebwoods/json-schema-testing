shared_context 'API' do
  def api_get(url, params={})
    get "/#{url}", params: params, headers: headers
  end

  def api_post(url, params={})
    post "/#{url}", params: params.to_json, headers: headers
  end

  def api_put(url, params={})
    put "/#{url}", params: params.to_json, headers: headers
  end

  def json_body
    JSON.parse(response.body)
  end

  def headers
    {
      'CONTENT_TYPE' => 'application/json',
      'HTTP_ACCEPT' => 'application/json',
      'HTTP_USER_AGENT' => 'Test Client'
    }
  end
end
