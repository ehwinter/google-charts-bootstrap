class Faq < ActiveRecord::Base
  attr_accessible :answer, :display, :order, :question
end
