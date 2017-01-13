# encoding: utf-8

class KindeditorExtend::MediaUploader < KindeditorExtend::AssetUploader

  def extension_white_list
    EXT_NAMES[:media]
  end

end

