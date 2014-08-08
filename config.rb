set :meta, {
  title: 'Already Awesome',
  url: 'http://foo.com',
}

activate :syntax
set :syntax_theme, Rouge::Themes::Base16

set :ga_key, 'UA-XXXXXXX-Y'

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'partials'

configure :development do
  activate :livereload, apply_js_live: false, apply_css_live: false
end

configure :build do
  activate :relative_assets
  activate :directory_indexes
  activate :asset_hash

  # Ensmallen assets
  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript
  activate :image_optim
  activate :gzip, exts: %w(.js .css .html .htm .svg .ttf .otf .woff .eot)
end
