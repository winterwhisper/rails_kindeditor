# encoding: utf-8

class KindeditorExtend::FileUploader < KindeditorExtend::AssetUploader

  def extension_white_list
    EXT_NAMES[:file]
  end

end

