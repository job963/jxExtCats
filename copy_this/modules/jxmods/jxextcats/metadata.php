<?php

/**
 * Metadata version
 */
$sMetadataVersion = '1.1';
 
/**
 * Module information
 */
$aModule = array(
    'id'           => 'jxextcats',
    'title'        => 'jxExtCats - Extended Category Editing',
    'description'  => array(
                        'de' => 'Erweiterung der Kategorie-Bearbeitung',
                        'en' => 'Extension of Category Editing'
                        ),
    'thumbnail'    => 'jxextcats.png',
    'version'      => '0.1',
    'author'       => 'Joachim Barthel',
    'url'          => 'https://github.com/job963/jxExtCats',
    'email'        => 'jobarthel@gmail.com',
    'extend'       => array(
            'oxcategory' => 'jxmods/jxextcats/application/models/jxextcats_oxcategory'
                        ),
    'files'        => array(
            'jxextcats_install'  => 'jxmods/jxextcats/application/controllers/admin/jxextcats_install.php'
                        ),
    'templates'    => array(
                        ),
    'blocks' => array(
                    array(
                        'template' => 'category_list.tpl', 
                        'block'    => 'admin_category_list_colgroup',                     
                        'file'     => '/out/blocks/admin_category_list_colgroup.tpl'
                            ),
                    array(
                        'template' => 'category_list.tpl', 
                        'block'    => 'admin_category_list_filter',                     
                        'file'     => '/out/blocks/admin_category_list_filter.tpl'
                            ),
                    array(
                        'template' => 'category_list.tpl', 
                        'block'    => 'admin_category_list_sorting',                     
                        'file'     => '/out/blocks/admin_category_list_sorting.tpl'
                            ),
                    array(
                        'template' => 'category_list.tpl', 
                        'block'    => 'admin_category_list_item',                     
                        'file'     => '/out/blocks/admin_category_list_item.tpl'
                            ),
                    array(
                        'template' => 'category_main.tpl', 
                        'block'    => 'admin_category_main_articles',                     
                        'file'     => '/out/blocks/admin_category_main_articles.tpl'
                            ),
                    array(
                        'template' => 'category_main.tpl', 
                        'block'    => 'admin_category_main_attributes',                     
                        'file'     => '/out/blocks/admin_category_main_attributes.tpl'
                            ),
                        ),
    'events'       => array(
        'onActivate'   => 'jxextcats_install::onActivate', 
        'onDeactivate' => 'jxextcats_install::onDeactivate'
                        ),
    'settings' => array(
                    array(
                            'group' => 'JXEXTCATS_BLOCKS', 
                            'name'  => 'sJxExtCatsShowCategoryList', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTCATS_BLOCKS', 
                            'name'  => 'sJxExtCatsShowCategoryMain', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                        )
    );

?>
