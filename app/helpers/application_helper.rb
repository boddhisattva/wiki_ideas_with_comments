module ApplicationHelper

  def markdown(text)    
    options = {
      filter_html:     true,
      hard_wrap:       true
    }

    extensions = {}

    # extensions = {
    #   autolink:           true,
    #   fenced_code_blocks: true,
    #   no_intra_emphasis: true,      
    #   lax_html_blocks: true,
    #   strikethrough: true,
    #   superscript: true
    # }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end

end
