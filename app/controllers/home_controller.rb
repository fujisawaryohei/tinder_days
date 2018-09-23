class HomeController < ApplicationController
	def home
		@users=User.all
		@user = @users.order("RAND()").limit(1).first #ActiveRecord::Relationで悩んだ件
	end
end
