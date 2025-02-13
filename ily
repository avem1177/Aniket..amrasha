<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Will You Be My Valentine, Amrasha?</title>
  <style>
    /* Full-screen responsive background */
    body {
      margin: 0;
      padding: 0;
      background: url('https://your-image-url-here.jpg') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Arial', sans-serif;
      color: #fff;
      text-align: center;
      height: 100vh;
      overflow: hidden;
    }
    .container {
      position: relative;
      top: 30%;
      transform: translateY(-30%);
      padding: 20px;
    }
    h1 {
      font-size: 2.5em;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
      margin-bottom: 40px;
    }
    .button {
      padding: 20px 40px;
      font-size: 1.5em;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: transform 0.2s;
      outline: none;
    }
    #yesBtn {
      background-color: #28a745;
      color: #fff;
      width: 220px;
      height: 70px;
      margin: 20px;
    }
    #noBtn {
      background-color: #dc3545;
      color: #fff;
      width: 150px;
      height: 50px;
      position: relative;
      margin: 20px;
    }
    #message {
      font-size: 2em;
      margin-top: 40px;
      text-shadow: 1px 1px 3px rgba(0,0,0,0.7);
    }
  </style>
</head>
<body>
  <!-- Background audio (replace src with your desired flute tune URL) -->
  <audio id="bgMusic" src="https://your-audio-url-here.mp3" loop></audio>
  
  <div class="container">
    <h1>Amrasha, will you be my Valentine?</h1>
    <button id="yesBtn" class="button">Yes!</button>
    <button id="noBtn" class="button">No</button>
    <div id="message"></div>
  </div>

  <script>
    // Trigger music playback on first touch (mobile browsers require user interaction)
    document.body.addEventListener('touchstart', function() {
      var music = document.getElementById('bgMusic');
      if (music.paused) {
        music.play().catch(() => {});
      }
    }, { once: true });

    // Make the "No" button evasive on hover and touch
    var noBtn = document.getElementById('noBtn');
    function moveButton() {
      // Calculate a random position within the viewport
      var x = Math.random() * (window.innerWidth - noBtn.offsetWidth);
      var y = Math.random() * (window.innerHeight - noBtn.offsetHeight);
      noBtn.style.position = 'absolute';
      noBtn.style.left = x + 'px';
      noBtn.style.top = y + 'px';
    }
    noBtn.addEventListener('mouseover', moveButton);
    noBtn.addEventListener('touchstart', function(e) {
      moveButton();
      e.preventDefault();
    });

    // Handle the "Yes" button click
    var yesBtn = document.getElementById('yesBtn');
    yesBtn.addEventListener('click', function() {
      document.getElementById('message').innerHTML =
        "Thank you, Rasmalai!<br>With all my love, Aniket.";
      // Optionally, you could pause the music or change the background here
    });
  </script>
</body>
</html>
