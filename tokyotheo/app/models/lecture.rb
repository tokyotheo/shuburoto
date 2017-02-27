class Lecture < ActiveRecord::Base
  validates_presence_of :title, :instructor
  has_many :lesson
  validates_uniqueness_of :no,
    :message => 'がユニークではありません'
end
