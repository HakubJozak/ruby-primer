class Fixnum
  def run_only_if_odd
    if self % 2 == 1
      yield
    end
  end
end


9.run_only_if_odd(&block)


def html
  html_header
  yield
  html_footer  
end


html do
  '<p>I am paragraph</p>'
end


def list_ruby_files
  Dir["*.rb"]
end


def list_files(prefix, suffix)
  #...
end

list_files "/home","rb"
