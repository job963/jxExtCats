
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
    <fieldset title="[{ oxmultilang ident="CATEGORY_MAIN_ITEMSINCATEGORY" }]" style="padding-left: 5px;">
        <legend>[{ oxmultilang ident="CATEGORY_MAIN_ITEMSINCATEGORY" }]</legend>
        <br />

        <div style="max-height: 170px; overflow: auto;">
            <ul style="margin-left:8px;">
            [{foreach from=$edit->jxGetAllArticles() name=search item=aArticle}]
                <li>[{$aArticle.oxartnum}],&nbsp;  [{$aArticle.oxtitle}]</li>
            [{/foreach}]
            </ul>
        </div>
        <br />

        [{$smarty.block.parent}]

    </fieldset>
[{else}]
    [{$smarty.block.parent}]
[{/if}]

