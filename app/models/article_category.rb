class ArticleCategory < ApplicationRecord
  # Note Rails 4 -> class ArticleCategory < ActiveRecord::Base
  belongs_to :article
  belongs_to :category
end