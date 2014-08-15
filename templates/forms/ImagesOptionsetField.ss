<% loop $Options %>
    <label class="radio">
        <input id="$ID" class="radio" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> />
        <% if $Title.CMSThumbnail %>$Title.CMSThumbnail<% else %>$Title<% end_if %>
    </label>
<% end_loop %>
