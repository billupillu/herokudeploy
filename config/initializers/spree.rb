# # Configure Spree Preferences
# #
# # Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
# #       If you would like users to be able to update a setting with the Admin it should NOT be set here.
# #
# # Note: If a preference is set here it will be stored within the cache & database upon initialization.
# #       Just removing an entry from this initializer will not make the preference value go away.
# #       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
# #
# # In order to initialize a setting do:
# # config.setting_name = 'new value'
# Spree.config do |config|
#   # Example:
#   # Uncomment to stop tracking inventory levels in the application
#   # config.track_inventory_levels = false

#   config.admin_interface_logo = 'logo.svg'
#   #config.products_per_page = 20
# end

# Spree.user_class = "Spree::User"




Spree.config do |config|
       # Example:
       # Uncomment to override the default site name.
      
       config.admin_interface_logo = 'logo.svg'

      #S3 configuration
      if Rails.env.production? then
           #production. Store images on S3.
           # development will default to local storage
          attachment_config = {
          s3_credentials: {
            access_key_id: "AKIAIMK5VBXROGVQIFPA",
            secret_access_key: "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",
            bucket: "anzelbucket",
          },


          storage:        :s3,
          s3_headers:     { "Cache-Control" => "max-age=31557600" },
          s3_protocol:    "https",
          bucket:         ENV["S3_BUCKET"],

          #path:          ":rails_root/public/:class/:attachment/:id/:style/:basename.:extension",
          default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
          default_style: "product",
          }

          attachment_config.each do |key, value|
               Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
          end
     end
end
Spree.user_class = "Spree::User"
