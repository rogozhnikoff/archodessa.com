json.array!(@articles) do |article|
  json.extract! article, :id, :publish, :body, :title, :status, :avatar
  json.url article_url(article, format: :json)
end
