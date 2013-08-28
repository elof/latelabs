# == Schema Information
#
# Table name: messages
#
#  id             :integer          not null, primary key
#  user_sender    :integer
#  user_receivers :integer
#  project_id     :integer
#  title          :string(255)
#  body           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Messages < ActiveRecord::Base
  attr_accessible :title, :body, :created_at, :user_sender, :user_receivers, :project_id
  belongs_to :user
	has_many :receivers
end