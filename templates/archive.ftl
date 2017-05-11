<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div id="main">
		<ul class="posts">
                <header>
                    <h1>Archive</h1>
                </header>
                <#list published_posts as post>
					<#if (last_month)??>
						<#if post.date?string("MMMM yyyy") != last_month>
							</ul>
							<h4>${post.date?string("MMMM yyyy")}</h4>
							<ul class="posts">
						</#if>
					<#else>
						<h4>${post.date?string("MMMM yyyy")}</h4>
						<ul class="posts">
					</#if>
					<li>
				        <article>
				            <header>
				                <h3>${post.date?string("dd")} - <a href="${content.rootpath}${post.noExtensionUri}"><#escape x as x?xml>${post.title}</#escape></a></h3>
				                 
				            </header>
				        </article>
				    </li>
					<#assign last_month = post.date?string("MMMM yyyy")>
				</#list>
            </ul>
	</div>
		
	<#include "commons/sidebar.ftl">
<#include "footer.ftl">