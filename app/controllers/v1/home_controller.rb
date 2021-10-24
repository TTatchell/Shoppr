class V1::HomeController < ApplicationController
    def index
      render json: { :things => [
          {
              :name => 'something',
              :guid => 'dfgsdfgsdfgsdfgsdfg'
          }
      ]}.to_json
    end
end