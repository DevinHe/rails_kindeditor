RailsKindeditor.setup do |config|

  # Specify the subfolders in public directory.
  # You can customize it , eg: config.upload_dir = 'this/is/my/folder'
  config.upload_dir = 'uploads'

  # Allowed file types for upload.
  config.upload_image_ext = %w[gif jpg jpeg png bmp]
  config.upload_flash_ext = %w[swf flv]
  config.upload_media_ext = %w[swf flv mp3 wav wma wmv mid avi mpg asf rm rmvb]
  config.upload_file_ext = %w[doc docx xls xlsx ppt htm html txt zip rar gz bz2]

  # Porcess upload image size
  # eg: 1600x1600 => 800x800
  #     1600x800  => 800x400
  #     400x400   => 400x400  # No Change
  # Support two different formats: Hash and Array
  # If you want to save the original image, you should use Hash to configure.
  # e.g.
  # config.image_resize_to_limit = {small: [400,300],mini: [60,40]}{small: [400,300],mini: [60,40]}
  # This means you want to use small version image to display,and save the original image and mini version image.
  # If you only want to save the resized image, please keep the original way: using Array
  # e.g. config.image_resize_to_limit = [800, 800]

end
