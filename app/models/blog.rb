class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged
	validates_presence_of :body, :title, :topic_id
	belongs_to :topic
  has_many :comments, dependent: :destroy
  def self.recent
    order("created_at DESC")
  end
  def self.with_topics
    includes(:topics).where.not(topics: { id: nil })
  end
end