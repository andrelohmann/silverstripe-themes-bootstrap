<% if $IsHorizontal %>
    <div class="form-group">
        <% if $Title && $hasData %>
            <label class="col-md-2 control-label" for="$id">$Title</label>
        <% else %>
            <div class="col-md-2"></div>
        <% end_if %>
        
        <div class="col-md-9">
            $Field
        </div>
        
        <% if $RightTitle %>
            <div class="col-md-1">
                <span class="help-inline"><a href="#" data-toggle="tooltip" title="$RightTitle"><i class="glyphicon glyphicon-question-sign"></i></a></span>
            </div>
        <% end_if %>
    </div>
<% else %>
    <div class="form-group">
        <% if $Title %><label for="$id">$Title</label><% end_if %>
        $Field
        <% if $RightTitle %><span class="help-block">$RightTitle</span><% end_if %>
    </div>
<% end_if %>