/*
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
*/
function baHideOtherLanguage(id_lang, iso_lang){
	jQuery(".language_view").html(iso_lang+' <span class="caret"></span>');
	jQuery(".lang>div").css("display","none");
	jQuery(".lang>div.language_"+iso_lang).css("display","block");
	jQuery(".translatable-field").css("display","none");
	jQuery(".translatable-field.lang-"+id_lang).css("display","block");
	jQuery("#iso_code_now").attr("data-iso-choose",iso_lang);
	jQuery("#iso_code_now").attr("data-id-choose",id_lang);
}