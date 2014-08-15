<% if $IncludeFormTag %>
<form $AttributesHTML role="form">
<% end_if %>
    <% if $Message %>
        <% if $MessageType="good" %>
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                $Message
            </div>
        <% else_if $MessageType="bad" %>
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                $Message
            </div>
        <% else_if $MessageType="warning" %>
            <div class="alert alert-warning">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                $Message
            </div>
        <% else %>
            <div class="alert alert-warning">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                $Message
            </div>
        <% end_if %>
    <% end_if %>
    
	<% if $Legend %><legend>$Legend</legend><% end_if %> 
	<% loop $Fields %>
            $FieldHolder
	<% end_loop %>
    
    <% if $Actions %>
        <% loop $Actions %>
            $Field
	<% end_loop %>
    <% end_if %>
<% if $IncludeFormTag %>
</form>
<% end_if %>
