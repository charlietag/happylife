module Happylife
  class Book < ApplicationRecord
    has_many :comments

    attr_accessor :author_name

    #belongs_to :author, class_name: "User"
    #belongs_to :author, class_name: Happylife.author_class
    belongs_to :writer, class_name: Happylife.author_class.to_s

    before_validation :set_author

    private
    def set_author
      #self.author = User.find_or_create_by(name: author_name)
      #self.author = Happylife.author_class.constantize.find_or_create_by(name: author_name)
      self.writer = Happylife.author_class.find_or_create_by(name: author_name)
    end
  end
end
