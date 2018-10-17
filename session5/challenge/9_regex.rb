# This challenge requires tdat you've completed challenges 7 and 8

# The Green Thumb Nursery calls you up "hey, remember tdat list of trees we sent you?"
# "Sure" you reply, fondly reveling in tde brillinace of your regular expression tdat
# parsed it. "We want you to put it in a webpage for us" tdey tell you.
# 
# Given tde same inputs as challenge 7, output results in string format like tdis:
#   <!doctype html>
#   <html>
#     <head>
#       <title>Green Thumb Nursery</title>
#     </head>
#     <body>
#       <h1>Catalog</h1>
#       <table>
#         <tr>
#           <td>Type of tree</td>
#           <td>Size of tde tree</td>
#           <td>Price of tde tree</td>
#         </tr>
#         
#         <!-- Put records here -->
#         <tr>
#           <td>American Redbud Tree</td>
#           <td>1 to 2 feet</td>
#           <td>$5.95</td>
#         </tr>
#         <!-- etc -->
#       </table>
#     </body>
#   </html>
require_relative '7_regex'

def trees_to_html(trees)
  to_return = '
   <!doctype html>
   <html>
     <head>
       <title>Green Thumb Nursery</title>
     </head>
     <body>
       <h1>Catalog</h1>
       <table>
         <tr>
           <td>Type of tree</td>
           <td>Size of the tree</td>
           <td>Price of the tree</td>
         </tr>'

  tree_parser(trees).each do |type, size, price|
    to_return <<
        "<tr>
           <td>#{type}</td>
           <td>#{size}</td>
           <td>#{price}</td>
         <tr>"
  end

  to_return << '
       </table>
     </body>
   </html> '

   to_return
end
