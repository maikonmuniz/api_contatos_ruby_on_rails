module Api::V1

class ApiController < ApplicationController
    acts_as_token_authentication_handler_for User
 
    before_action :require_authentication!
    
    private
    
    def require_authentication!
    
    throw(:warden, scope: :user) unless current_user.presence
    
    end


end

end

#"a2yWsjEJbpPbDG9xNCgh"


# <User id: 2, email: "mike.muniz@yahoo.com.br", created_at: "2021-10-25 03:26:18.447874000 +0000",
#  updated_at: "2021-10-25 03:26:18.447874000 +0000", name: nil, authentication_token: "6Wv_5Tzsiyfzq_fBi5wz">