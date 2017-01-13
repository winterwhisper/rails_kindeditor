# encoding: utf-8

class KindeditorExtend::FlashUploader < KindeditorExtend::AssetUploader

  def extension_white_list
    EXT_NAMES[:flash]
  end

end

