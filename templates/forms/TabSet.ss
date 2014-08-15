<div class="tabbable">
    <ul class="nav nav-tabs">
    <% loop $Tabs %>
        <li class="$FirstLast $MiddleString $extraClass <% if $FirstLast == 'first' %>active<% end_if %>"><a href="#$id" id="tab-$id" data-toggle="tab">$Title</a></li>
    <% end_loop %>
    </ul>
    
    <div class="tab-content">
        <div class="form-group"></div>
        <% loop $Tabs %>
            <% if $Tabs %>
                $FieldHolder
            <% else %>
                <div $getAttributesHTML("class") class="tab-pane $extraClass <% if $FirstLast == 'first' %>active<% end_if %>">
                    <% if $IsHorizontal %>
                        <% loop $Fields %>

                            <% if $IsHidden %>
                                $Field
                            <% else %>
                                $FieldHolder
                            <% end_if %>

                        <% end_loop %>
                    <% else %>
                        <% loop $Fields %>
                            $FieldHolder
                        <% end_loop %>
                    <% end_if %>
                </div>
            <% end_if %>
        <% end_loop %>
    </div>
</div>
