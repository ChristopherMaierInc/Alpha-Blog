class ArticleCategory < ActiveRecord::Base

  belongs_to :article
  belings_to :category

end
