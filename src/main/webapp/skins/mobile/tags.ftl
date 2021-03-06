<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${tagLabel} - ${symphonyLabel}">
        <meta name="description" content="${symphonyLabel} ${trendTagsLabel},${symphonyLabel} ${coldTagsLabel}"/>
        </@head>
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="fn-hr10"></div>
                <div class="content">
                    <div class="module">
                        <div class="module-header">  
                            <h2>
                                ${trendTagsLabel}
                            </h2>
                        </div>
                        <div class="module-panel list">
                            <ul class="tags-trend">
                                <#list trendTags as tag>
                                <li class="<#if !tag_has_next>last</#if>"> 
                                    <div class="fn-clear">
                                        <#if tag.tagIconPath!="">
                                        <div class="avatar-small fn-left" style="background-image:url('${staticServePath}/images/tags/${tag.tagIconPath}')" alt="${tag.tagTitle}"></div>
                                        &nbsp;
                                        </#if>
                                        <h2><a class="ft-red" rel="tag" href="${servePath}/tag/${tag.tagURI}">${tag.tagTitle}</a></h2>
                                        <span class="ft-gray fn-right">
                                            ${referenceLabel} ${tag.tagReferenceCount?c} &nbsp;
                                            ${cmtLabel} ${tag.tagCommentCount?c} 
                                        </span>
                                    </div>
                                    <div class="content-reset">${tag.tagDescription}</div>
                                </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="side">
                    <#if ADLabel!="">
                    <div class="module">
                        <div class="module-header">
                            <h2>
                                ${sponsorLabel} 
                                <a href="http://pub.xxpay.org/article/1510881321910" class="fn-right ft-13 ft-gray" target="_blank">${wantPutOnLabel}</a>
                            </h2>
                        </div>
                        <div class="module-panel ad fn-clear">
                            ${ADLabel}
                        </div>
                    </div>
                    </#if>
                    </#if>
                    <div class="module">
                        <div class="module-header">
                            <h2>开源项目</h2>
                        </div>
                        <div class="module-panel">
                            <ul class="module-list open-source">
                                <li>
                                    <a target="_blank" href="https://github.com/jmdhappy/xxpay-master"><b class="ft-red slogan">【XxPay】</b></a>
                                    <a class="title" target="_blank" href="https://github.com/jmdhappy/xxpay-master">&nbsp;&nbsp;做最好的聚合支付系统</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="module">
                        <div class="module-header">  
                            <h2>
                                ${coldTagsLabel}
                            </h2>
                        </div>
                        <div class="module-panel list">
                            <ul class="tags-cold">
                                <#list coldTags as tag>
                                <li class="fn-clear<#if !tag_has_next> last</#if>">
                                    <#if tag.tagIconPath!="">
                                    <div class="avatar fn-left" style="background-image: url('${staticServePath}/images/tags/${tag.tagIconPath}')" alt="${tag.tagTitle}"></div>
                                    </#if>
                                    <h2><a rel="tag" class="ft-green" href="${servePath}/tag/${tag.tagURI}">${tag.tagTitle}</a></h2>
                                    <span class="ft-gray fn-right">
                                        ${referenceLabel} ${tag.tagReferenceCount?c} &nbsp;
                                        ${cmtLabel} ${tag.tagCommentCount?c} 
                                    </span>
                                    <div class="content-reset">${tag.tagDescription}</div>
                                </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <#include "footer.ftl">
    </body>
</html>
