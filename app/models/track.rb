class Track < ActiveRecord::Base

  belongs_to :user

  enum access_level: [:private_access, :public_access]

  scope :find_by_name, -> (name){where(:name => name)}
  scope :find_by_artist, -> (artist){where(:artist => artist)}
  scope :find_by_access, -> (access){where(:access => access)}
  scope :find_by_uploader, -> (uploaded_by){where(:uploaded_by => uploaded_by)}
  scope :find_by_genre, -> (genre){where(:genre => genre)}
  scope :views_sorted, lambda{order("tracks.views DESC")}
  scope :newest_first, lambda{order("tracks.created_at DESC")}
end
