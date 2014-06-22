
module UsersHelper
  # 与えられたユーザーのGravatar (http://gravatar.com/) を返す。
  def gravatar_for(user, option = { size: 40 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = option[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?size=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
