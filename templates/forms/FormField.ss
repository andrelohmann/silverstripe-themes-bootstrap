<% if $isReadonly %>
	<span id="$ID"<% if $extraClass %> class="$extraClass"<% end_if %>>
		$Value
	</span>
<% else %>
	<input $getAttributesHTML("class") class="form-control $extraClass" />
<% end_if %>
