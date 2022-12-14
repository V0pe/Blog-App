class Comment < ApplicationRecord
  belongs_to :post, counter_cache: :commentsCounter
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  def update_comments_counter
    post.increment!(:commentsCounter)
  end
end
