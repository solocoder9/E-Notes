<!-- Additional custom styles -->
<style>
/* Reset body and html margin and padding */
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	box-sizing: border-box;
}

/* General body styling */
body {
	font-family: Arial, sans-serif;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

header {
	background-color: #4CAF50;
	color: white;
	padding: 20px 0;
	text-align: center;
	margin: 0; /* Remove any margin */
}

/* Hero Section */
.hero {
	background-color: #f1f1f1;
	padding: 60px 20px;
	text-align: center;
	flex: 1; /* Ensures the hero section takes remaining space */
	display: flex;
	justify-content: center; /* Centers content vertically */
	align-items: center; /* Centers content horizontally */
	height: 100vh;
	/* Ensures the hero section takes full viewport height */
	margin: 0; /* Remove the gap */
}

.hero h1 {
	font-size: 48px;
	color: #333;
}

.hero p {
	font-size: 18px;
	color: #666;
	margin-top: 10px;
}

/* Footer styling */
footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 20px;
}
</style>