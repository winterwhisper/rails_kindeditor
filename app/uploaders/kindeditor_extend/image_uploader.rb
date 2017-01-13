# encoding: utf-8

class KindeditorExtend::ImageUploader < KindeditorExtend::AssetUploader

  def extension_white_list
    EXT_NAMES[:image]
  end

end

