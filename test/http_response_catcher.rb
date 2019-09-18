# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).


# HttpResponseCatcher
class HttpResponseCatcher < GemApi::HttpCallBack
  attr_accessor :response

  def on_before_request(request) end

  # Catching the response
  def on_after_response(context)
    @response = context.response
  end
end



