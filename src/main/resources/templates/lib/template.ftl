<#macro header title>
<!DOCTYPE html>
<html>
<head>
    <title>Kafdrop: ${title}</title>
    <link type="text/css" rel="stylesheet" href="/kafdrop/css/baseless.min.css"/>
    <link type="text/css" rel="stylesheet" href="/kafdrop/css/font-awesome.min.css"/>
    <link type="text/css" rel="stylesheet" href="/kafdrop/css/global.css"/>

    <script src="/kafdrop/js/jquery.min.js"></script>
    <script src="/kafdrop/js/global.js"></script>

    <#nested>
</head>
<body>
    <#include "/includes/header.ftl">
<div class="container">
</#macro>

<#macro footer>
</div>
    <#nested>
</body>
</html>
</#macro>

<#macro toggleLink target startVisible=true anchor='#'>
<a href="<#if !anchor?starts_with('#')>#</#if>${anchor}" class="toggle-link" data-toggle-target="${target}"><i class="fa <#if startVisible>fa-chevron-circle-down<#else>fa-chevron-circle-right</#if>"></i></a>
</#macro>

<#macro yn value>
    <#if value>Yes<#else>No</#if>
</#macro>
