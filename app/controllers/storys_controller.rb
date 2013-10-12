class StorysController < ApplicationController
    def show
        @story = Story.find(params[:id])
    end
end
