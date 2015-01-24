# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( welcomepage.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( ct-navbar.js )
Rails.application.config.assets.precompile += %w( jquery-1.10.2.js )

# Rails.application.config.assets.precompile += %w( bootstrap.scss )
# Rails.application.config.assets.precompile += %w( ct-navbar.scss )
# Rails.application.config.assets.precompile += %w( jquery-1.10.2.scss )
# Rails.application.config.assets.precompile += %w( pe-icon-7-stroke.scss )