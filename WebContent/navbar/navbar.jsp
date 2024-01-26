<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<title>header</title>
<script src="https://kit.fontawesome.com/de18e820f6.js" crossorigin="anonymous"></script>
<style>

:root {
	--text-color: #f0f4f5;
	--background-color: #263343;
	--accent-color: skyblue;
}

body{
	margin: 0;
	font-family: 'Roboto', sans-serif;
}

a {
	/*color:white;*/
	color : var(--text-color);
	text-decoration: none;
}

ul li{
	list-style: none;
}

i{
	color: white;
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #a2bde8;
	padding: 8px 12px;
}

.navbar-logo{
	font-size: 24px;
	font-weight: bold;
}

.navbar-logo a{
	letter-spacing: 3px;
}

.navbar-menu{
	display:flex;
	padding-left: 0;
}
.navbar-menu li{
	padding: 8px 12px;
}

.navbar-menu li:hover {

	text-decoration: underline;
	text-underline-offset : 6px;
	text-decoration-thickness: 2px;
	text-decoration-color: white;

/*
	background-color: #b0b2b8;
	border-radius: 4px;
*/	
}


.navbar-icons {
	display: flex;
	padding-left: 0;
}
.navbar-icons li{
	padding: 8px 12px;
}


.navbar-togglebtn{
	position: absolute;
	right: 32px;
	font-size: 24px;
	display: none;
}

@media screen and (max-width: 768px){

	.navbar {
		flex-direction : column;
		align-items : flex-start;
		padding : 8px 24px;
	}
	.navbar-menu {
	  display: none;
	  flex-direction : column;
	  align-items: center;
	  width: 100%;
	}
	.navbar-menu li{
	  width: 100%;
	  text-align: center;
	}
	.navbar-icons {
	  display: none;
	  justify-content: center;
	  width: 100%;
	}
	.navbar-togglebtn {
	  display: block;
	}	
	
	.navbar-menu.active,
	.navbar-icons.active {
		display: flex;
	}
	
					
}

</style>
</head>
<body>
<!--<i class='bx bx-bowl-rice'></i> 밥그릇 아이콘 -->
<nav class="navbar">
<div class="navbar-logo">
<i class="fa-solid fa-user-astronaut"></i>
<a href="#">practice</a>
</div>
<ul class="navbar-menu">
<li><a href="#">Home</a></li>
<li><a href="#">About</a></li>
<li><a href="#">Contact</a></li>
<li><a href="#">FAQ</a></li>
</ul>
<ul class="navbar-icons">
<li><i class="fa-brands fa-instagram"></i></li>
<li><i class="fa-brands fa-facebook"></i></li>
</ul>

<a href="#" class="navbar-togglebtn">
<i class="fa-solid fa-bars"></i>
</a>
</nav>

<script>

const toggleBtn = document.querySelector('.navbar-togglebtn');
const menu = document.querySelector('.navbar-menu');
const icons = document.querySelector('.navbar-icons');

toggleBtn.addEventListener('click', () => {
	
	menu.classList.toggle('active');
	icons.classList.toggle('active');
	
});
</script>

</body>
</html>