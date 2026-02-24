<!DOCTYPE html>
<?php 

	if (session_status() === PHP_SESSION_NONE) {
	    session_start();
	}


 ?>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>SIGeCT UTeM</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- CSS global -->
    <link rel="stylesheet" href="/app/assets/css/styles.css">

    <!-- 1️⃣ jQuery PRIMERO -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- 3️⃣ Summernote CSS -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-bs5.min.css" rel="stylesheet">

</head>
<body>

