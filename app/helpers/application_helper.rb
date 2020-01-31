module ApplicationHelper
  def tweet_link(link_text, content, given_options=nil)
    html_options, options, name = options, name, block if block_given?
    options ||= {}

    html_options = convert_options_to_data_attributes(options, html_options)
    link_to link_text, "https://twitter.com/intent/tweet?text=#{CGI.escape(content)}", target: "_blank", rel:%w[noopener noreferrer nofollow], **given_options
  end
end
