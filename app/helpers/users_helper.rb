module UsersHelper

    def profile_picture user , width = 100
        image_path = user.image.present? ?  user.image.thumb.url : "placeholder-profile.jpg"
        image_tag(image_path, width: width, class: "img-rounded")
    end

    def can_edit_profile? id
        user_signed_in? && current_user.id == id        
    end
    
end
