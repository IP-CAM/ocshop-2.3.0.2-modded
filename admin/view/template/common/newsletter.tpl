<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <form action="" method="post" enctype="multipart/form-data" id="form-category">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-left">ID</td>
                  <td class="text-left">Email</td>
                  <td class="text-left"></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach($newsltr as $n) { ?>
                <tr>
                  <td class="text-left"><?php echo $n['id']; ?></td>
				          <td class="text-left"><?php echo $n['email']; ?></td>
                  <td class="text-right"><a href="<?php echo $n['delete']; ?>" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-trash-o"></i></a></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>