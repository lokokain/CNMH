class Informe < ApplicationRecord

	def file
    get_file_from_storage_engine(name)
  end

  def file=(upload)
    self.name = upload.original_filename
    store_file_in_engine(upload)
    
  end
	
end
