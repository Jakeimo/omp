{**
 * templates/management/settings/website.tpl
 *
 * Copyright (c) 2003-2013 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * The website settings page.
 *}

{strip}
{assign var="pageTitle" value="manager.website.title"}
{include file="common/header.tpl"}
{/strip}

<script type="text/javascript">
	// Attach the JS file tab handler.
	$(function() {ldelim}
		$('#websiteTabs').pkpHandler('$.pkp.controllers.TabHandler');
	{rdelim});
</script>
<div id="websiteTabs">
	<ul>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="appearance"}">{translate key="manager.website.appearance"}</a></li>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="information"}">{translate key="manager.website.information"}</a></li>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="languages"}">{translate key="common.languages"}</a></li>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="plugins"}">{translate key="common.plugins"}</a></li>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="announcements"}">{translate key="manager.announcements"}</a>
		<li><a href="{url router=$smarty.const.ROUTE_COMPONENT component="tab.settings.WebsiteSettingsTabHandler" op="showTab" tab="navigation"}">{translate key="common.navigation"}</a></li>
	</ul>
</div>

{include file="common/footer.tpl"}
