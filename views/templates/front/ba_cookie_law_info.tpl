{**
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2016 PrestaShop SA
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
* @since 1.6
*}
<!--Modules BA EU Cookie Law-->
<style type="text/css">
	{$BAEU_customCss|escape:'htmlall':'UTF-8'}
	#ba_eu_cookie_law{
		background:#{$BAEU_CookieBarColor|escape:'htmlall':'UTF-8'};
		border-bottom-color:#{$BAEU_BoderColor|escape:'htmlall':'UTF-8'} !important;
		border-bottom-style:solid;
	}
	#ba_eu_cookie_law .ba_eu_cookie_law_text{
		color:#{$BAEU_TextColor|escape:'htmlall':'UTF-8'};
	}
	#ba_eu_cookie_accept{
		color:#{$BAEU_leftLinkColor|escape:'htmlall':'UTF-8'};
		{if $BAEU_leftShowAsButton=="Y"}background:#{$BAEU_leftButtonColor|escape:'htmlall':'UTF-8'};{/if}
	}
	#ba_eu_cookie_more_info{
		color:#{$BAEU_rightLinkColor|escape:'htmlall':'UTF-8'};
		{if $BAEU_rightShowAsButton=="Y"}background:#{$BAEU_rightButtonColor|escape:'htmlall':'UTF-8'};{/if}
	}
	#ba_eu_cookie_accept:hover{
		color:#{$BAEU_leftHoverButtonColor|escape:'htmlall':'UTF-8'};
	}
	#ba_eu_cookie_more_info:hover{
		color:#{$BAEU_rightHoverButtonColor|escape:'htmlall':'UTF-8'};
	}
	{if $BAEU_CookieBarShowIn=="3"}
	.ba_popup_cookie{
		position:fixed;
		width:100%;
		height:100%;
		background:#000;
		opacity:0.5;
		z-index:5004;
	}
	{/if}
</style>
<script type="text/javascript">
	jQuery(document).ready(function(){
		if(getCookie('ba_eu_cookie_law') != 1){
			if({$BAEU_OnLoad|escape:'htmlall':'UTF-8'} == 1 && {$BAEU_CookieBarShowIn|escape:'htmlall':'UTF-8'}==1){
				jQuery("#ba_eu_cookie_law").slideDown();
			}else if({$BAEU_OnLoad|escape:'htmlall':'UTF-8'} == 1 && {$BAEU_CookieBarShowIn|escape:'htmlall':'UTF-8'}==2){
				jQuery("#ba_eu_cookie_law").slideDown();
			}else{
				jQuery("#ba_eu_cookie_law").show();
			}
		}
		jQuery("#ba_eu_cookie_accept").click(function(){
			if({$BAEU_leftAction|escape:'htmlall':'UTF-8'}==1){
				jQuery("#ba_eu_cookie_law").hide();
			}else if({$BAEU_leftAction|escape:'htmlall':'UTF-8'}==2){
				window.close();
				window.open('{$BAEU_leftLinkURL|escape:'htmlall':'UTF-8'}');
			}else if({$BAEU_leftOpenLinkInNewWindow|escape:'htmlall':'UTF-8'}=="Y"){
				window.open('{$BAEU_leftLinkURL|escape:'htmlall':'UTF-8'}');
			}
			jQuery(".ba_popup_cookie").hide();
			setCookie("ba_eu_cookie_law", "1");
		});
		if("{$BAEU_AutoHideCookieAfterDelay|escape:'htmlall':'UTF-8'}"=="Y" && {$BAEU_CookieBarShowIn|escape:'htmlall':'UTF-8'} <=2){
			setTimeout(function(){
				if({$BAEU_OnHide|escape:'htmlall':'UTF-8'}==1){
					jQuery("#ba_eu_cookie_law").slideUp();
					
				}else{
					jQuery("#ba_eu_cookie_law").hide();
					
				}
			}, {$BAEU_MillisecondUntilHide|escape:'htmlall':'UTF-8'});
		}
		
		
		$(document).ready(function(){
			if($(window).scrollTop()==0 && {$BAEU_CookieBarShowIn|escape:'htmlall':'UTF-8'} <=2){
				jQuery(window).scroll(function() {
					if("{$BAEU_AutoHideCookieIfScroll|escape:'htmlall':'UTF-8'}"=="Y"){
						//console.log($(window).scrollTop());
						if({$BAEU_OnHide|escape:'htmlall':'UTF-8'}==1){
							//alert('a');
							jQuery("#ba_eu_cookie_law").slideUp();
							
						}else{
							jQuery("#ba_eu_cookie_law").hide();
							
						}
					}
				});
			}
		});
		
		if("{$BAEU_ShowBorder|escape:'htmlall':'UTF-8'}"=="Y"){
			jQuery("#ba_eu_cookie_law").css("border-width","3px");
			
		}
		if({$BAEU_CookieBarShowIn|escape:'htmlall':'UTF-8'}==3){
			jQuery(".ba_popup_cookie").show();
			jQuery("#ba_eu_cookie_law .fa-times-circle-o").show();
			var widthBody = jQuery(window).width();
			var heightBody = jQuery(window).height();
			jQuery('#ba_eu_cookie_law').css({ 'width':'80%','overflow':'inherit'});
			var widthPopupCookie = jQuery('#ba_eu_cookie_law').width();
			var heightPopupCookie = jQuery('#ba_eu_cookie_law').height();
			var MarginLeft = ((widthBody - widthPopupCookie)/2);
			var MarginTop = ((heightBody - heightPopupCookie)/2);
			//console.log(heightBody);
			//console.log(heightPopupCookie);
			jQuery('#ba_eu_cookie_law').css({ "top":(MarginTop-40)+"px","left":MarginLeft+"px" });
		}
		jQuery('.ba_popup_cookie').click(function(){
			jQuery(this).hide();
			jQuery("#ba_eu_cookie_law").hide();
		});
		jQuery("#ba_eu_cookie_law .fa-times-circle-o").click(function(){
			jQuery(this).hide();
			jQuery('.ba_popup_cookie').hide();
			jQuery("#ba_eu_cookie_law").hide();
		});
		function setCookie(cname, cvalue, exdays) {
			var d = new Date();
			d.setTime(d.getTime() + (exdays*24*60*60*1000));
			var expires = "expires="+d.toUTCString();
			document.cookie = cname + "=" + cvalue + "; " + expires;
		}
		function getCookie(cname) {
			var name = cname + "=";
			var ca = document.cookie.split(';');
			for(var i=0; i<ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0)==' ') c = c.substring(1);
				if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
			}
			return "";
		}
	});
	
</script>
<div id="ba_eu_cookie_law" class="{if $BAEU_CookieBarShowIn=="1"}show_in_header{else if $BAEU_CookieBarShowIn=="2"}show_in_footer{else if $BAEU_CookieBarShowIn=="3"}showInPopup{/if}">
	<div class="ba_eu_cookie_law_button">
		<span class="ba_eu_cookie_law_text">
			{$BAEU_Message_{$id_lang}}
			<a href="javascript:void(0)" name="acceptSubmit" id="ba_eu_cookie_accept" class="{if $BAEU_leftShowAsButton=="Y"}btn btn-default{/if}">{$BAEU_leftLinkText_{$id_lang}|escape:'htmlall':'UTF-8'}</a>
			<a href="{$BAEU_rightLinkURL|escape:'htmlall':'UTF-8'}" target="{if $BAEU_RightOpenLinkInNewWinDown=="Y"}_blank{/if}" name="moreInfoSubmit" id="ba_eu_cookie_more_info" class="{if $BAEU_rightShowAsButton=="Y"}btn btn-default{/if}">{$BAEU_rightLinkText_{$id_lang}|escape:'htmlall':'UTF-8'}</a>
		</span>
		
	</div>
	<i class="fa fa-times-circle-o icon-remove-circle"></i>
</div>
<div class="ba_popup_cookie"></div>