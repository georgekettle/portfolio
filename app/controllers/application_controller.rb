class ApplicationController < ActionController::Base
    before_action :set_default_meta_tags

    private

    def set_default_meta_tags
        # helpers = ActionController::Base.helpers
        set_meta_tags(
            title: "George Kettleeeee",
            description: "Soloproneur, Rails Developer, and lover of Cycling & Skiing.",
            keywords: "George Kettle, Rails, Ruby, Small business, Soloproneur",
            # url: request.original_url,
            # icon: helpers.image_url("favicon.png"),
            # image: helpers.image_url("default_og_image.jpg"),
            # twitter: {
            #     card: "summary",
            #     site: "@george_kettle",
            # }
        )
    end
end
