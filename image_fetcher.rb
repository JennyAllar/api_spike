class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
    children = @data["data"].length
  end

  def bitly_urls
    @data["data"].map do |gif|
      gif["bitly_url"]
    end
  end
end