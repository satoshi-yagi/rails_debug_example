class HelloController < ApplicationController
    def index
        data = { name: "John" }
        render json: data
    end
end
