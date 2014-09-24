class Coreos < Operatingsystem

  PXEFILES = {:kernel => "coreos_production_pxe.vmlinuz", :initrd => "coreos_production_pxe_image.cpio.gz"}


  def pxe_type
    "coreos"
  end

  def url_for_boot(file)
    PXEFILES[file]
  end

  def pxedir
    ""
  end

  def display_family
    "Coreos"
  end

  def self.shorten_description description
    return "" if description.blank?
    s=description
    s.gsub!('Coreos','Coreos')
    s.gsub!(/\(.+?\)/,'')
    s.squeeze! " "
    s.strip!
    s.blank? ? description : s
  end

  def self.model_name
    superclass.model_name
  end

end
