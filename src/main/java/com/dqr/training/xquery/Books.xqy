for $x in doc("Books.xml")/books/book
return if ($x/@category = "XML") then <XMLBOOK>{fn:upper-case($x/title)}</XMLBOOK>
else <NONXML>{fn:substring($x/title, 1,4)}</NONXML>
