class Message < ActiveRecord::Base

  # validates :title, presence: true, length: { maximum: 40 }
  validates :content, presence: true, length: { maximum: 140 }
  validates :author, presence: true, length: { maximum: 25 }


  validate :url_checker, if: :url

  def url_checker
    errors.add(:invalid_url, ": url is invalid") unless url =~ URI::regexp || url == ""
  end
  # validates :url, format: { with: /\A^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$\Z/i }
  # validate :invalid_url, if: :url

  #   def invalid_url
  #     unless url =~ /\A^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$\Z/i
  #       errors.add(:url, "invalid URL") 
  #     end
  #   end

end

