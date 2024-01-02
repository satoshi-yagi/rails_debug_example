class ByebugController < ApplicationController
    def index
        byebug
        data = { name: "byebug" }
        render json: data
    end
end
