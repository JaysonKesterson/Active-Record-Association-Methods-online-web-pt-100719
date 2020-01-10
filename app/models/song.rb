class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.find_by(name: "Drake")
    if !drake
      drake = Artist.new(name: "Drake")
      drake.save
      self.artist = drake
    else
    self.artist = drake
    end
  end
end