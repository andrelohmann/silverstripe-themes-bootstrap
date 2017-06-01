<select $getAttributesHTML("class") class="form-control $extraClass">
<% loop $Options %>
	<% include GroupedDropdownFieldOption %>
<% end_loop %>
</select>
