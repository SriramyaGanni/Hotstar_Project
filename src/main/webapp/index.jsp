<!DOCTYPE html>
<html>
<head>
    <title>Hotstar</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f9f9f9;
        }

        /* Top Navbar */
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            background: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: red;
        }

        .search-bar input {
            padding: 8px;
            width: 300px;
            border-radius: 20px;
            border: 1px solid #ccc;
        }

        /* Video Grid */
        .container {
            padding: 20px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }

        .video-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .video-card:hover {
            transform: scale(1.05);
        }

        .thumbnail {
            width: 100%;
            height: 150px;
            background: #ccc;
        }

        .video-title {
            padding: 10px;
            font-weight: bold;
        }

        /* Video Player */
        .player-section {
            display: none;
            padding: 20px;
            text-align: center;
        }

        video {
            width: 80%;
            max-width: 800px;
            border-radius: 10px;
        }

        .back-btn {
            margin-top: 15px;
            padding: 8px 20px;
            border: none;
            background: red;
            color: white;
            border-radius: 20px;
            cursor: pointer;
        }

    </style>

    <script>
        function playVideo(title) {
            document.getElementById("home").style.display = "none";
            document.getElementById("player").style.display = "block";
            document.getElementById("videoTitle").innerText = title;
        }

        function goHome() {
            document.getElementById("player").style.display = "none";
            document.getElementById("home").style.display = "block";
        }
    </script>
</head>

<body>

<header>
    <div class="logo">HotstarTube</div>
    <div class="search-bar">
        <input type="text" placeholder="Search">
    </div>
</header>

<!-- HOME SECTION -->
<div id="home">
    <div class="container">

        <div class="video-card" onclick="playVideo('Avengers Trailer')">
            <div class="thumbnail"></div>
            <div class="video-title">Avengers Trailer</div>
        </div>

        <div class="video-card" onclick="playVideo('IPL Highlights')">
            <div class="thumbnail"></div>
            <div class="video-title">IPL Highlights</div>
        </div>

        <div class="video-card" onclick="playVideo('Stranger Things Scene')">
            <div class="thumbnail"></div>
            <div class="video-title">Stranger Things Scene</div>
        </div>

        <div class="video-card" onclick="playVideo('RRR Action Scene')">
            <div class="thumbnail"></div>
            <div class="video-title">RRR Action Scene</div>
        </div>

    </div>
</div>

<!-- VIDEO PLAYER SECTION -->
<div id="player" class="player-section">
    <h2 id="videoTitle"></h2>

    <video controls>
        <source src="sample.mp4" type="video/mp4">
        Your browser does not support video.
    </video>

    <br>
    <button class="back-btn" onclick="goHome()">Back</button>
</div>

</body>
</html>

