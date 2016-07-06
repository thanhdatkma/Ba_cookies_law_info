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
{if $demoMode=="1"}
<div class="bootstrap ba_error">
	<div class="module_error alert alert-danger">
		{l s='You are use ' mod='ba_cookie_law_info'}
		<strong>{l s='Demo Mode' mod='ba_cookie_law_info'}</strong>
		{l s=', so some buttons, functions will be disabled because of security. ' mod='ba_cookie_law_info'}<br />
		{l s='You can use them in Live mode after you puchase our module. ' mod='ba_cookie_law_info'}<br />
		{l s='Thanks !' mod='ba_cookie_law_info'}
	</div>
</div>
{/if}
<form id="ba_eu_cookie_law" action="" method="POST">
	<div id="custom_colors_section">
		<div><h2>{l s='BA Cookie Law Info' mod='ba_cookie_law_info'}</h3></div>
		
		<div class="form-horizontal colors" style="position:relative;">
			<fieldset>
				<div><h3 style="margin: 0 0 10px 0;">{l s='Settings' mod='ba_cookie_law_info'}</h3></div>
				<div class="control-group">
					<label class="control-label">{l s='Cookie Bar is currently' mod='ba_cookie_law_info'}: </label>
					<div class="controls">
						<label class="checkbox">
							<input type="checkbox" name="BAEU_CookieBarIsCurrently" {if $BAEU_CookieBarIsCurrently=="Y"}checked{/if}/>
						</label>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='Cookie Bar will be show in' mod='ba_cookie_law_info'}: </label>
						<select name="BAEU_CookieBarShowIn" style="width:100px;">
							<option value="1" {if $BAEU_CookieBarShowIn=="1"}selected{/if}>{l s='Header' mod='ba_cookie_law_info'}</option>
							<option value="2" {if $BAEU_CookieBarShowIn=="2"}selected{/if}>{l s='Footer' mod='ba_cookie_law_info'}</option>
							<option value="3" {if $BAEU_CookieBarShowIn=="3"}selected{/if}>{l s='Popup' mod='ba_cookie_law_info'}</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='On load' mod='ba_cookie_law_info'}: </label>
						<select name="BAEU_OnLoad" style="width:100px;">
							<option value="1" {if $BAEU_OnLoad=="1"}selected{/if}>{l s='Animate' mod='ba_cookie_law_info'}</option>
							<option value="2" {if $BAEU_OnLoad=="2"}selected{/if}>{l s='Sticky' mod='ba_cookie_law_info'}</option>
						</select>
					</div>
				</div>
				
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='On hide' mod='ba_cookie_law_info'}: </label>
						<select name="BAEU_OnHide" style="width:100px;">
							<option value="1" {if $BAEU_OnHide=="1"}selected{/if}>{l s='Animate' mod='ba_cookie_law_info'}</option>
							<option value="2" {if $BAEU_OnHide=="2"}selected{/if}>{l s='Disappear' mod='ba_cookie_law_info'}</option>
						</select>
					</div>
				</div>
				
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='Auto-hide cookie bar after delay?' mod='ba_cookie_law_info'} </label>
						<div class="controls">
							<label class="checkbox">
								<input type="checkbox" name="BAEU_AutoHideCookieAfterDelay" value="{$BAEU_AutoHideCookieAfterDelay|escape:'htmlall':'UTF-8'}" {if $BAEU_AutoHideCookieAfterDelay=="Y"}checked{/if}/>
							</label>
						</div>
					</div>
				</div>
				
				<div class="control-group ">
					<label class="control-label">{l s='Milliseconds until hidden' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input type="text" name="BAEU_MillisecondUntilHide" class="form-control" value="{$BAEU_MillisecondUntilHide|escape:'htmlall':'UTF-8'}" style="width:100px;">
					</div>
					<label class="help-block">{l s='Specify milliseconds (not seconds) e.g. 3000 = 3 seconds' mod='ba_cookie_law_info'}</label>
				</div>
				
				<div class="control-group">
					<label class="control-label">{l s='Auto-hide cookie bar if the user scrolls?' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<label class="checkbox">
							<input type="checkbox" name="BAEU_AutoHideCookieIfScroll" value="{$BAEU_AutoHideCookieIfScroll|escape:'htmlall':'UTF-8'}" {if $BAEU_AutoHideCookieIfScroll=="Y"}checked{/if}/>
						</label>
					</div>
				</div>
				
				<!--<div class="control-group">
					<label class="control-label">{l s='Reload after "scroll accept" event?' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<label class="checkbox">
							<input type="checkbox" name="BAEU_ReloadAfterAcceptEvent" value="{$BAEU_ReloadAfterAcceptEvent|escape:'htmlall':'UTF-8'}" {if $BAEU_ReloadAfterAcceptEvent=="Y"}checked{/if}/>
						</label>
					</div>
				</div>-->
				<div class="control-group" style="width:100%;">
					<label class="control-label">{l s='Customize CSS' mod='ba_cookie_law_info'}</label>
					<div class="controls col-sm-7">
						<textarea style="width:622px;height:90px;" name="BAEU_customCss" class="form-control" col="500" row="50">{$BAEU_customCss|escape:'htmlall':'UTF-8'}</textarea>
					</div>
				</div>
				
				<div class="wrap-header2 col-sm-12"><h3 style="margin: 0 0 10px 0;">{l s='Cookie Law Message Bar' mod='ba_cookie_law_info'}</h3></div>
				
				<div class="col-sm-12" style="margin:5px 0;">
					<label class="control-label">{l s='Message' mod='ba_cookie_law_info'}: </label>
					<div class="controls col-sm-7">
						{foreach from=$arr_language key=key_lang item=language}
						<div class="translatable-field row lang-{$language.id_lang|escape:'htmlall':'UTF-8'}" style="{if $id_default_language == $language.id_lang}display:block;{/if} {if $id_default_language != $language.id_lang}display:none;{/if}" >
							<div class="col-lg-11">
								<textarea name="BAEU_Message_{$language.id_lang|escape:'htmlall':'UTF-8'}" id="BAEU_Message_{$language.id_lang|escape:'htmlall':'UTF-8'}" class="rte">{$BAEU_Message_{$language.id_lang}|escape:'htmlall':'UTF-8'}</textarea>
							</div>
							<div class="col-lg-1">
								<button type="button" class="btn btn-default dropdown-toggle language_view" data-toggle="dropdown" tabindex="-1" data-id-choose="{$id_default_language|escape:'htmlall':'UTF-8'}" data-iso-choose="{$iso_default_language|escape:'htmlall':'UTF-8'}" id="iso_code_now">
									{$iso_default_language|escape:'htmlall':'UTF-8'}
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									{foreach $arr_language key=key_lang item=language}
										<li>
											<a  href="javascript:void(0);" onclick="baHideOtherLanguage('{$language.id_lang|escape:'htmlall':'UTF-8'}','{$language.iso_code|escape:'htmlall':'UTF-8'}')">{$language.iso_code|escape:'htmlall':'UTF-8'}</a>
										</li>
									{/foreach}
								</ul>
							</div>
						</div>
						{/foreach}
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Cookie Bar Color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_CookieBarColor" class="color" value="{$BAEU_CookieBarColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Text Color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_TextColor" class="color" value="{$BAEU_TextColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group first-item">
					<label class="control-label">{l s='Show Border?' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<label class="checkbox">
							<input type="checkbox" name="BAEU_ShowBorder" value="{$BAEU_ShowBorder|escape:'htmlall':'UTF-8'}" {if $BAEU_ShowBorder=="Y"}checked{/if}/>
						</label>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Border Color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_BoderColor" class="color" value="{$BAEU_BoderColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				
				<div class="wrap-header2 col-sm-12"><h3 style="margin: 0 0 10px 0;">{l s='CUSTOMISE ACCEPT BUTTON' mod='ba_cookie_law_info'}</h3></div>
				
				<div class="control-group" style="width:100%;">{l s='This button/link can be customised to either simply close the cookie bar, or follow a link. You can also customise the colours and styles, and show it as a link or a button.' mod='ba_cookie_law_info'}</div>
				
				<div class="control-group" style="width:100%;">
					<label class="control-label">{l s='Link text' mod='ba_cookie_law_info'}</label>
					<div class="controls col-sm-5">
						{foreach from=$arr_language key=key_lang item=language}
						<div class="translatable-field row lang-{$language.id_lang|escape:'htmlall':'UTF-8'}" style="{if $id_default_language == $language.id_lang}display:block;{/if} {if $id_default_language != $language.id_lang}display:none;{/if}" >
							<div class="col-lg-4">
								<input type="text" id="BAEU_leftLinkText_{$language.id_lang|escape:'htmlall':'UTF-8'}" class="form-control  updateCurrentText " name="BAEU_leftLinkText_{$language.id_lang|escape:'htmlall':'UTF-8'}" value="{$BAEU_leftLinkText_{$language.id_lang}|escape:'htmlall':'UTF-8'}">
							</div>
							<div class="col-lg-2" style="margin-top:4px;">
								<button type="button" class="btn btn-default dropdown-toggle language_view" data-toggle="dropdown" tabindex="-1" data-id-choose="{$id_default_language|escape:'htmlall':'UTF-8'}" data-iso-choose="{$iso_default_language|escape:'htmlall':'UTF-8'}" id="iso_code_now">
									{$iso_default_language|escape:'htmlall':'UTF-8'}
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									{foreach $arr_language key =key_lang item=language}
										<li>
											<a  href="javascript:void(0);" onclick="baHideOtherLanguage('{$language.id_lang|escape:'htmlall':'UTF-8'}','{$language.iso_code|escape:'htmlall':'UTF-8'}')">{$language.iso_code|escape:'htmlall':'UTF-8'}</a>
										</li>
									{/foreach}
								</ul>
							</div>
						</div>
						{/foreach}
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='Action' mod='ba_cookie_law_info'}: </label>
						<select name="BAEU_leftAction" style="width:100px;">
							<option value="1" {if $BAEU_leftAction=="1"}selected{/if}>{l s='Close Alert' mod='ba_cookie_law_info'}</option>
							<option value="2" {if $BAEU_leftAction=="2"}selected{/if}>{l s='Open URL' mod='ba_cookie_law_info'}</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Link URL' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input type="text" name="BAEU_leftLinkURL" class="form-control" value="{$BAEU_leftLinkURL|escape:'htmlall':'UTF-8'}" style="width:100px;">
					</div>
					<label class="help-block">{l s='Button will only link to URL if Action = Show URL' mod='ba_cookie_law_info'}</label>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='Open link in new window?' mod='ba_cookie_law_info'} </label>
						<div class="controls">
							<label class="checkbox">
								<input type="checkbox" name="BAEU_leftOpenLinkInNewWindow" value="{$BAEU_leftOpenLinkInNewWindow|escape:'htmlall':'UTF-8'}" {if $BAEU_leftOpenLinkInNewWindow=="Y"}checked{/if}/>
							</label>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Link Color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_leftLinkColor" class="color" value="{$BAEU_leftLinkColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group" style="clear: both;">
					<div class="controls">
						<label class="control-label">{l s='Show as button?' mod='ba_cookie_law_info'} </label>
						<div class="controls">
							<label class="checkbox">
								<input type="checkbox" name="BAEU_leftShowAsButton" value="{$BAEU_leftShowAsButton|escape:'htmlall':'UTF-8'}" {if $BAEU_leftShowAsButton=="Y"}checked{/if}/>
							</label>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Button color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_leftButtonColor" class="color" value="{$BAEU_leftButtonColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Hover Text color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_leftHoverButtonColor" class="color" value="{$BAEU_leftHoverButtonColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				
				<div class="wrap-header2 col-sm-12"><h3 style="margin: 0 0 10px 0;">{l s='CUSTOMISE READ MORE BUTTON' mod='ba_cookie_law_info'}</h3></div>
				<div class="control-group" style="width:100%;">{l s='This button or link can be used to provide a link out to your Privacy & Cookie Policy. You can customise it any way you like' mod='ba_cookie_law_info'}</div>
				<div class="control-group" style="width:100%;">
					<label class="control-label">{l s='Link text' mod='ba_cookie_law_info'}</label>
					<div class="controls col-sm-5">
						{foreach from=$arr_language key=key_lang item=language}
						<div class="translatable-field row lang-{$language.id_lang|escape:'htmlall':'UTF-8'}" style="{if $id_default_language == $language.id_lang}display:block;{/if} {if $id_default_language != $language.id_lang}display:none;{/if}" >
							<div class="col-lg-4">
								<input type="text" id="BAEU_rightLinkText_{$language.id_lang|escape:'htmlall':'UTF-8'}" class="form-control  updateCurrentText " name="BAEU_rightLinkText_{$language.id_lang|escape:'htmlall':'UTF-8'}" required="required" value="{$BAEU_rightLinkText_{$language.id_lang}|escape:'htmlall':'UTF-8'}">
							</div>
							<div class="col-lg-2" style="margin-top:4px;">
								<button type="button" class="btn btn-default dropdown-toggle language_view" data-toggle="dropdown" tabindex="-1" data-id-choose="{$id_default_language|escape:'htmlall':'UTF-8'}" data-iso-choose="{$iso_default_language|escape:'htmlall':'UTF-8'}" id="iso_code_now">
									{$iso_default_language|escape:'htmlall':'UTF-8'}
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									{foreach $arr_language key =key_lang item=language}
										<li>
											<a  href="javascript:void(0);" onclick="baHideOtherLanguage('{$language.id_lang|escape:'htmlall':'UTF-8'}','{$language.iso_code|escape:'htmlall':'UTF-8'}')">{$language.iso_code|escape:'htmlall':'UTF-8'}</a>
										</li>
									{/foreach}
								</ul>
							</div>
						</div>
						{/foreach}
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Link URL' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input type="text" name="BAEU_rightLinkURL" class="form-control" value="{$BAEU_rightLinkURL|escape:'htmlall':'UTF-8'}" style="width:100px;">
					</div>
					<label class="help-block">{l s='Button will only link to URL if Action = Show URL' mod='ba_cookie_law_info'}</label>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Link Color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_rightLinkColor" class="color" value="{$BAEU_rightLinkColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="control-label">{l s='Open link in new window?' mod='ba_cookie_law_info'} </label>
						<div class="controls">
							<label class="checkbox">
								<input type="checkbox" name="BAEU_RightOpenLinkInNewWinDown" value="{$BAEU_RightOpenLinkInNewWinDown|escape:'htmlall':'UTF-8'}" {if $BAEU_RightOpenLinkInNewWinDown=="Y"}checked{/if}/>
							</label>
						</div>
					</div>
				</div>
				<div class="control-group" style="clear: both;">
					<div class="controls">
						<label class="control-label">{l s='Show as button?' mod='ba_cookie_law_info'} </label>
						<div class="controls">
							<label class="checkbox">
								<input type="checkbox" name="BAEU_rightShowAsButton" value="{$BAEU_rightShowAsButton|escape:'htmlall':'UTF-8'}" {if $BAEU_rightShowAsButton=="Y"}checked{/if}/>
							</label>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Button color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_rightButtonColor" class="color" value="{$BAEU_rightButtonColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">{l s='Hover Text color' mod='ba_cookie_law_info'}</label>
					<div class="controls">
						<input name="BAEU_rightHoverButtonColor" class="color" value="{$BAEU_rightHoverButtonColor|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
			</fieldset>
		</div>
	</div>
	
	<div class="panel-footer">
		<button type="submit" value="1" id="module_form_submit_btn" name="submitbaCancel" class="btn btn-default pull-left">
			<i class="process-icon-cancel"></i> {l s='Cancel' mod='ba_cookie_law_info'}
		</button>
		<button type="submit" value="1" id="module_form_submit_btn" name="submitba" class="btn btn-default pull-right">
			<i class="process-icon-save"></i> {l s='Save' mod='ba_cookie_law_info'}
		</button>
		<button type="submit" name="submitBaAndStay" class="btn btn-default pull-right">
			<i class="process-icon-save"></i> {l s='Save and stay' mod='ba_cookie_law_info'}
		</button>
	</div>
</form>