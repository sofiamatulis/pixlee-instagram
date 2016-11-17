class Photo < ApplicationRecord
#   validates :thumbnail_url, :owner, :link, :presence => true
#
# def get_recent_media
#   recent_media = Instagram.tag_recent_media('fashion')
#
#   recent_media.each do |media|
#     Photo.create(
#       link: media.link,
#       owner: media.caption.from.username,
#       thumbnail_url: media.images.thumbnail.url
#     )
#   end
# end
# end
