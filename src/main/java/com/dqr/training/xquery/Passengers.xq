xquery version "3.0";

(:~
: User: dqromney
: Date: 8/10/17
: Time: 9:40 PM
: To change this template use File | Settings | File Templates.
:)
for $x in doc("Passengers.xml")/passengers/passenger
where $x/class = "Business"
order by $x/firstname
return $x


