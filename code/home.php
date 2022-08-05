<html>
<?php
session_start();
?>
	<head>
		<style>
			
			#title{
				background-color:#00b300;
				font-size:33px;				
				color:white;
				margin-left:20px;
				margin-top:20px;
				margin-bottom:20px;
				
				}
				
			ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color: #00b300;
			}
			
			li {
				float: right;
			}
			
			#titlehead{
				float: left;
			}

			li a {
				display: block;
				color: white;
				font-size:20px;
				text-align: center;
				padding: 16px 20px;
				margin-top:10px;
				text-decoration: none;
			}

			li a:hover:not(.active) {
				background-color: #4dff4d;
			}

			.active {
				background-color: #4dff4d;
			}
			
			#home_img{
				padding-left:50px;
				padding-bottom:10px;
				
			}
			
			#bottom_posts{
				
				display: grid;
				grid-template-columns: auto auto auto;
				padding: 10px;
			
			}
			
			#img_title{
				
				display: grid;
				grid-template-columns: auto auto auto;
				padding: 5px;
			
			}
			#posts{
				padding: 20px;
				font-size: 30px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<ul>
			<li id="titlehead"><p id="title">Hajji Allaudin Pharmacy</p></li>
			<li style=margin-right:10px;><a href="admin_login.php">Admin</a></li>
			<li><a href="pharmacist_login.php">Pharmacist</a></li>
			<li><a href="user_login.php">User</a></li>
			<li><a class="active" href="home.php">Home</a></li>
		</ul>		
		<div id=posts>
			<div id=posts>
				<div id=icon>
					<img src="image\icon.png">
				</div>		
			</div>
			<div id=top_posts>
					<img src="image\med.png">				
				</div>
			</div>
		</div>
		<?php		
		$servername = "localhost";
		$username = "root";
		$password = "";
		$conn = new mysqli($servername, $username, $password);
		if ($conn->connect_error) 
		{
			die("Connection failed: " . $conn->connect_error);
		} 
		$sql = "CREATE DATABASE IF NOT EXISTS pharmacydb";
		if ($conn->query($sql) === TRUE) 
		{
		$conn->close();
		}
		?>
	</body>	
</html>