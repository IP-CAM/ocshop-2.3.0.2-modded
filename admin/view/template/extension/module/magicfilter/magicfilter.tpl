<!-- 
  

  Module Name: Magic Filter
  Description:MagicFilter plugin is one of the best product filter plugin for opencart. It has feature to filter products by
  manufactures and price range.
  Author: Rootingenious infotch
  Author Email:support@rootingenious.com
  Author URI: www.rootingenious.com
  Version: 1.0
  Tags: filter, magic filter, price filter, manufacture filter, brand filter,product filter

-->
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-magicfilter" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
        <div class="panel-heading">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_setting" data-toggle="tab"><i class="fa fa-pencil"></i><?php echo $text_magicsetting; ?></a></li>
                <li><a href="#tab_manufacturer" data-toggle="tab"> <?php echo $text_Manufacturer; ?></a></li>
                <li><a href="#tab-price" data-toggle="tab"><?php echo $text_Price; ?></a></li>
            </ul>
        </div>
        <div class="tab-content">
            <?php    
            // start magicfilter stetting         
            ?>
            <div class="tab-pane active" id="tab_setting">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer1" class="form-horizontal">
                    <input type='hidden' name='magicfilter_status' value="1" />
                   


                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="magicfilter_status"><?php echo $entry_status_Manufacturer ?></label>
                        <div class="col-sm-10">
                            <select name="magicfilter_manufacturer_filter_status" id="magicfilter_status" class="form-control form-magic-setting">
                                <?php if ($magicfilter_manufacturer_filter_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-price-status"><?php echo $entry_status_price; ?></label>
                        <div class="col-sm-10">
                            <select name="magicfilter_price_filter_status" id="input-price-status" class="form-control form-magic-setting">
                                <?php if ($magicfilter_price_filter_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div><br><br>


                    </div>
                    <?php    
                    // over magicfilter stetting 
                    // start manufacture filter
                    ?>
                    <div class="tab-pane" id="tab_manufacturer">

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-heading"><?php echo $entry_heading; ?></label>
                            <div class="col-sm-10">
                                <input type="text" name="magicfilter_heading" value="<?php
                                       echo $magicfilter_heading;
                                       ?>" placeholder="<?php
                                       echo $entry_heading;
                                       ?>" id="magicfilter_heading" class="form-control" required/>
                            </div>
                        </div> <br><br>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="magicfilter_image_status"><?php echo $entry_image_form_manufactur; ?></label>
                            <div class="col-sm-10">
                                <select name="magicfilter_image_status" id="magicfilter_image_status" class="form-control">
                                    <?php if ($magicfilter_image_status) { ?>
                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                    <option value="0"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                    <option value="1"><?php echo $text_enabled; ?></option>
                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div><br><br>

                        <div id="div_width_height">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image_height_width; ?></label>
                                <div class="col-sm-10">
                                    <div class=" row">
                                        <div class="col-md-6">
                                            <input type="text" name="magicfilter_image_width" value="<?php
                                                   echo $magicfilter_image_width;
                                                   ?>" placeholder="<?php
                                                   echo $entry_image_width;
                                                   ?>" id="magicfilter_image_width" class="form-control" required/>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" name="magicfilter_image_height" value="<?php
                                                   echo $magicfilter_image_height;
                                                   ?>" placeholder="<?php
                                                   echo $entry_image_height;
                                                   ?>" id="magicfilter_image_height" class="form-control" required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><br><br>
                    </div>
                    <?php
                    // over manufacture filter
                    // start praice filter
                    ?>

                    <div class="tab-pane" id="tab-price">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-price-range"><?php echo $entry_price_range ?></label>
                            <div class="col-sm-10">
                                <input name="magicfilter_price_filter_range" 	id="input-price-range" value ="<?php echo $magicfilter_price_filter_range ?>" class="form-control" placeholder="<?php echo $text_price_limits ?>" />
                            </div>
                        </div> <br><br>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-price-class"><?php echo $entry_price_class; ?></label>
                            <div class="col-sm-10">
                                <input name="magicfilter_price_filter_class" 	id="input-price-class" value ="<?php echo $magicfilter_price_filter_class; ?>" class="form-control" placeholder="<?php echo $text_price_class; ?>" />
                            </div>
                        </div><br><br>



                    </div>
                     
                    <?php 
                    // over price filter

                    ?>
                </form>



            </div>
        </div>
        <div class="author-creadits"><?php echo $careated_by; ?></div>
    </div>
</div>   
<script>
    $(function () {
        show_img_status = '<?php echo $magicfilter_image_status ;?>';
        if (show_img_status) {
            $('#div_width_height').show();
        } else {
            $('#div_width_height').hide();
        }
        $('#magicfilter_image_status').change(function () {
            if ($('#magicfilter_image_status').val() == '1') {
                $('#div_width_height').show();
            } else {
                $('#div_width_height').hide();
            }
        });
    });
</script> 
<?php echo $footer; ?>