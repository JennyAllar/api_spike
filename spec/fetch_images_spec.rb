require 'spec_helper'
require 'json'
require 'giphy'
require_relative '../image_fetcher'

describe ImageFetcher do

  before {
    json = Faraday.get("http://api.giphy.com/v1/gifs/search?q=no&api_key=dc6zaTOxFJmzC")
    json_data = JSON.parse(json.body)
    @image_fetcher = ImageFetcher.new(json_data)
  }

  it 'should return 25 children to parse through' do
    expect(@image_fetcher.count_children).to eq 25
  end

  it 'should return all bitly urls' do
    expect(@image_fetcher.bitly_urls).to include("http://gph.is/14fPy6A","http://gph.is/1956OUn")
  end


end