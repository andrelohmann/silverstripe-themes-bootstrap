<% if $Options.Count %>
    <% loop $Options %>
    <div class="radio">
        <label>
            <input id="$ID" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> />
            $Title
        </label>
    </div>
    <% end_loop %>
<% else %>
    <p>No options available</p>
<% end_if %>