desc 'Fill the test data into DB'
task :dbdata,[:table] => :environment do |t,args|
  require 'find'
  _folder =Rails.root.to_s + '/db/data/'
  if !args[:table].nil?
     _folder =Rails.root.to_s + '/db/data/'+args[:table]
  end
  _files = Find.find(_folder).select{|f|File.file?(f)}

  _files.each do |file|
    _fileds = file.split('/')
    _file_name = _fileds[_fileds.count - 1]
    _model = _fileds[_fileds.count - 2]
    
    _datas = YAML.load(File.read(file))
    _is_repeat = eval("#{_model}.where(#{_datas['data'][0]}).count > 0")
    if !_is_repeat
      _datas['data'].each{|item|
        eval("#{_model}.create(#{item})")
      } 
      puts "----#{_model}-----#{_file_name}----is OK---" 
    else
      puts "----#{_model}-----#{_file_name}----is repeat!!---"
    end 
  
  end  
end