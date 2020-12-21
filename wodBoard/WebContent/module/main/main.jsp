<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<main id="main-container">
	<div class="container">
		<div class="row">
			<div class="col-12">

				<div id="main-container-inner">
					<header class="header">
						<h2 class="title">WOD BOARD</h2>
					</header>

					<div class="buttons">
						<ul>
							<li><a href="https://www.crossfit.com/what-is-crossfit/" target="_blank" rel="noopener nofollow">CROSSFIT?</a></li>
							<li><a href="./?mod=record&p=daily">DAILY</a></li>
							<li><a href="./?mod=record&p=1rm">1RM</a></li>
						</ul>
					</div>

					<div class="bg">
						<video id="bgVideo" autoplay muted preload="metadata" poster="./assets/images/main/bg.jpg">
							<source src="https://i.imgur.com/pMopCdh.mp4" type="video/mp4">
						</video>
						<div class="poster"></div>
					</div>
				</div>

			</div>
		</div>
	</div>
</main>

<script>
	var bg = document.querySelector('.bg');
	var bgVideo = bg.querySelector('video');
	
	bgVideo.addEventListener('ended', (e) => {
		bg.classList.add('done');
	});
</script>