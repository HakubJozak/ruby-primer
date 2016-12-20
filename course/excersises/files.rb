# Prohleda domovsky adresar, vypise
# soubory, ktere:
#
# 1) maji dany suffix
# 2) blok zavolany s jejich jmenem jako parametrem, vrati true
#
# yield
# block_given?
# Dir.glob "**/*.rb"
#
def select_files(suffix)
  # Dir.glob("**/*.{#{suffix}}").select(&block)
  Dir.glob("**/*.{#{suffix}}").select do |file|
    yield(file)
  end
end



selected = select_files('rb') do |filename|
             File.new(filename).read =~ /petr|jakub/
           end

puts selected
