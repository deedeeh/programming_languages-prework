require 'pry'

# def reformat_languages(languages)
#   # your code here
#   new_hash = {}
#   js_styles = []
#   languages.each do |styles, data|
#     data.each do |language, type|
#       type.each do |k, v|
#         if language == :javascript
#           js_styles << styles
#           new_hash[language] = {k => v, :style => js_styles}
#         else
#           new_hash[language] = {k => v, :style => [styles]} 
#         end
#       end
#     end
#   end
#   new_hash
# end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_array = []
  languages.each do |styles, data|
    data.each do |language, type|
      type.each do |k, v|
        style_array << styles
        new_hash[language] = {k => v, :style => style_array} 
      end
    end
  end
  new_hash
  binding.pry
end
