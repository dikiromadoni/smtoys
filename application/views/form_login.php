<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Faiz Auto | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/iCheck/square/blue.css">

  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/animation/style.css">
</head>

<body onload="openEyes()">
  <div class="container" id="loginContainer" style="background-color:#08313A;">
      <style type="text/css">
        .st0 {
          fill: none;
          stroke: #29ABE2;
          stroke-width: 12;
          stroke-miterlimit: 10;
        }

        .st1 {
          fill: #C69C6D;
        }

        .st2 {
          fill: #754C24;
        }

        .st3 {
          fill: #A67C52;
        }

        .st4 {
          fill: #D3BD95;
          stroke: #8C6239;
          stroke-width: 4;
          stroke-miterlimit: 10;
        }

        .st5 {
          fill: #FFFFFF;
          stroke: #A67C52;
          stroke-width: 4;
          stroke-miterlimit: 10;
        }

        .st6 {
          stroke: #29ABE2;
          stroke-width: 5;
          stroke-miterlimit: 10;
        }

        .st7 {
          fill: none;
          stroke: #000000;
          stroke-width: 5;
          stroke-miterlimit: 10;
        }

        .st8 {
          fill: #42210B;
          stroke: #42210B;
          stroke-width: 5;
          stroke-miterlimit: 10;
        }

        .st9 {
          fill: none;
          stroke: #42210B;
          stroke-width: 5;
          stroke-miterlimit: 10;
        }

        .st10 {
          fill: #C69C6D;
          stroke: #A67C52;
          stroke-width: 4;
          stroke-miterlimit: 10;
        }

        .st11 {
          fill: none;
          stroke: #8C6239;
          stroke-width: 5;
          stroke-miterlimit: 10;
        }
      </style>

    <!--
Eye positions

straight forward:
788.5 356.5
877.5 356.5


down left is:
778.5 366.5
867.6 366.5

down middle:
788.5 366.5
877.6 366.5

right middle:
798.5 366.5
887.5 366.5
-->
    <div style="margin: 40px 40px;"> 
    <div style="width: 100%">
    <h3 class="text-center" style="font-weight: bold; color: white;"> Faiz Auto Cell </h3>

      <div style="margin: 40px 40px;">
        <?php
        echo form_open('auth/login', array('style' => 'text-align:center;'));
        ?>
        <?php $error = $this->session->flashdata('message_name');
        ?>
        <p align="center" style="color:red;"><?php echo $error; ?></p>
        <input onfocus="openEyes();" onblur="movePupilsToCenter();" name="username" id="username" type="text" placeholder="Username">
      </div>
    </div>
    <div style="margin: 40px 40px;">
      <div style="text-align: center">
        <input onfocus="closeEyes();" onblur="openEyes();" name="password" id="password" type="password" placeholder="Password">
      </div>
    </div>
    <div style="margin: 40px 40px;">
      <div style="text-align: center">
        <button type="submit" name="submit">Login</button>
      </div>
      </form>
    </div>
  </div>
  </div>
  <script rel="script" src="<?php echo base_url() ?>assets/plugins/animation/javascript.js"></script>
</body>

</html>