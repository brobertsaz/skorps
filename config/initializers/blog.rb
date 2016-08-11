Rails.application.config.after_initialize do
  begin
    # make a spot for the site
    dest = Rails.root.join('public/blog')

    # generate the site
    Jekyll::Site.new(
      Jekyll.configuration({
        "config" => Rails.root.join('config', 'jekyll.yml').to_s,
        "source" => Rails.root.join('blog').to_s,
        "destination" => dest.to_s
      })
    ).process

  rescue => e

  end
end