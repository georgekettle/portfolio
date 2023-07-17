class ApplicationController < ActionController::Base
    before_action :set_default_meta_tags

    private

    def set_default_meta_tags
        set_meta_tags(
            title: "George Kettle",
            description: "Soloproneur, Rails Developer, and lover of Cycling & Skiing.",
            keywords: "George Kettle, Rails, Ruby, Cycling, Skiing, Soloproneur",
          )
    end
end
