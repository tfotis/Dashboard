{adminheader}
<div class="z-admin-content-pagetitle">
    {icon type="config" size="small"}
    <h3>{gt text="Dashboard settings"}</h3>
</div>

<form class="z-form" action="{modurl modname="Dashboard" type="admin" func="updateconfig"}" method="post" enctype="application/x-www-form-urlencoded">
    <div>
        <input type="hidden" name="csrftoken" value="{insert name='csrftoken'}" />
        <fieldset>
            <legend>{gt text="Main info"}</legend>
            <div class="z-formrow">
                <label for="dashboard_widgets_per_row">{gt text="Widgets per row"}</label>
                <input id="dashboard_widgets_per_row" type="text" name="settings[widgets_per_row]" value="{$modvars.Dashboard.widgets_per_row|safetext}" size="3" maxlength="3" />
            </div>
            <div class="z-formrow">
                <label for="dashboard_available_widgets_per_row">{gt text="Available widgets icons per row"}</label>
                <input id="dashboard_available_widgets_per_row" type="text" name="settings[available_per_row]" value="{$modvars.Dashboard.available_per_row|safetext}" size="3" maxlength="3" />
            </div>
            <div class="z-formrow">
                <label for="dashboard_widgets_new_user">{gt text="Add all available widgets automatically for new users"}</label>
                <div id="dashboard_widgets_new_user">
                    <input id="dashboard_widgets_new_user_yes" type="radio" name="settings[new_user]" value="1" {if $modvars.Dashboard.new_user eq 1}checked="checked"{/if} />
                    <label for="dashboard_widgets_new_user_yes">{gt text="Yes"}</label>
                    <input id="dashboard_widgets_new_user_no" type="radio" name="settings[new_user]" value="0" {if $modvars.Dashboard.new_user eq 0}checked="checked"{/if} />
                    <label for="dashboard_widgets_new_user_no">{gt text="No"}</label>
                </div>
            </div>
        </fieldset>

        <div class="z-buttons z-formbuttons">
            {button src="button_ok.png" set="icons/extrasmall" __alt="Save" __title="Save" __text="Save"}
            <a href="{modurl modname="Dashboard" type="admin" func="config"}" title="{gt text="Cancel"}">{img modname=core src="button_cancel.png" set="icons/extrasmall" __alt="Cancel" __title="Cancel"} {gt text="Cancel"}</a>
        </div>
    </div>
</form>
{adminfooter}