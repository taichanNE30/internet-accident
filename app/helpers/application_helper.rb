module ApplicationHelper
  def tweet_link(link_text, content)
    link_to link_text, "https://twitter.com/intent/tweet?text=#{CGI.escape(content)}", target: "_blank", rel:%w[noopener noreferrer nofollow]
  end
end
