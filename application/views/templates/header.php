<html>
    <head>
        <title>CI Blog</title>
        <link rel="stylesheet" href="https://bootswatch.com/3/flatly/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/style.css">
        <script src="http://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">

                    <a class="navbar-brand" href="<?= base_url(); ?>">Code Igniter</a>
                </div>
                <div id="navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="<?= base_url(); ?>">Home</a></li>
                        <li><a href="<?= base_url(); ?>about">O mnie</a></li>
                        <li><a href="<?= base_url(); ?>posts">Blog</a></li>
                        <li><a href="<?= base_url(); ?>categories">Kategorie</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <?php if(!$this->session->userdata('logged_in')): ?>
                        <li><a href="<?php echo base_url(); ?>users/login">Zaloguj się</a></li>
                        <li><a href="<?php echo base_url(); ?>users/register">Zarejestruj się</a></li>
                        <?php endif; ?>
                        <?php if($this->session->userdata('logged_in')): ?>
                        <li><a href="<?php echo base_url(); ?>posts/create">Stwórz post</a></li>
                        <li><a href="<?php echo base_url(); ?>categories/create">Dodaj kategorie</a></li>
                        <li><a href="<?php echo base_url(); ?>users/logout">Wyloguj się</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <!-- Flash messages  -->

            <?php if($this->session->flashdata('user_registered')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('user_registered').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('post_created')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('post_created').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('post_updated')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('post_updated').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('catogory_created')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('catogory_created').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('post_deleted')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('post_deleted').'</p>'; ?>
            <?php endif; ?>
            
             <?php if($this->session->flashdata('login_failed')): ?> 
                <?php echo '<p class="alert alert-danger">'.$this->session
                        ->flashdata('login_failed').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('user_loggedin')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('user_loggedin').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('user_loggedout')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('user_loggedout').'</p>'; ?>
            <?php endif; ?>
            
            <?php if($this->session->flashdata('category_deleted')): ?> 
                <?php echo '<p class="alert alert-success">'.$this->session
                        ->flashdata('category_deleted').'</p>'; ?>
            <?php endif; ?>
            
        </div>
 



