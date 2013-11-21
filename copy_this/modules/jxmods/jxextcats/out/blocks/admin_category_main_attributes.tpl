
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_category_main_articles
  *  in file 
  *      article_extend.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]
    
[{assign var="oConfig" value=$oViewConf->getConfig()}]
    
[{ if $oConfig->getConfigParam("sJxExtCatsShowCategoryMain") }]
    <br />
    <fieldset title="[{ oxmultilang ident="ATTRIBUTE_CATEGORY_ATRLIST" }]" style="padding-left: 5px;">
        <legend>[{ oxmultilang ident="ATTRIBUTE_CATEGORY_ATRLIST" }]</legend>
        <br />
        
        <ul style="margin-left:8px;">
        [{foreach from=$edit->jxGetAllAttributes() item=aAttribute }]
            <li>[{if $aAttribute.oxused >= 1}]<strong>[{else}]<em>[{/if}][{$aAttribute.oxtitle}][{if $aAttribute.oxused >= 1}]</strong>[{else}]</em>[{/if}]</li>
        [{/foreach}]
        </ul>
    </fieldset>
[{/if}]