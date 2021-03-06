 module ApplicationHelper
	

	def user_avatar(user, size=40)
		if user.avatar.attached?
			user.avatar.variant(resize: "#{size}X#{size}!")
		else
			gravatar_image_url(user.email, size: size)
		end
	end
end
