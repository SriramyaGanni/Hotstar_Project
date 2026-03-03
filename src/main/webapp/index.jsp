<!DOCTYPE html>
<html>
<head>
    <title>Hotstar</title>
    <style>
        body {
            background-color: black;
            color: white;
            text-align: center;
            font-family: Arial;
        }

        .section {
            display: none;
            margin-top: 30px;
        }

        button {
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>

    <script>
        function showSection(sectionId) {
            // Hide all sections
            document.getElementById("home").style.display = "none";
            document.getElementById("movies").style.display = "none";
            document.getElementById("sports").style.display = "none";
            document.getElementById("tv").style.display = "none";

            // Show selected section
            document.getElementById(sectionId).style.display = "block";
        }
    </script>
</head>

<body>

<!-- HOME SECTION -->
<div id="home">
    <h1>Hotstar</h1>

    <button onclick="showSection('movies')">Movies</button>
    <button onclick="showSection('sports')">Sports</button>
    <button onclick="showSection('tv')">TV Shows</button>
</div>

<!-- MOVIES SECTION -->
<div id="movies" class="section">
    <h1>Movies 🎬</h1>
    <p>Avengers</p>
    <p>Bahubali</p>
    <p>RRR</p>
    <button onclick="showSection('home')">Back</button>
</div>

<!-- SPORTS SECTION -->
<div id="sports" class="section">
    <h1>Sports 🏏</h1>
    <p>Cricket</p>
    <p>Football</p>
    <p>IPL</p>
    <button onclick="showSection('home')">Back</button>
</div>

<!-- TV SECTION -->
<div id="tv" class="section">
    <h1>TV Shows 📺</h1>
    <p>Breaking Bad</p>
    <p>Stranger Things</p>
    <p>Money Heist</p>
    <button onclick="showSection('home')">Back</button>
</div>

</body>
</html>
