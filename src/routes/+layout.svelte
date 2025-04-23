<script lang="ts">
	import { onMount } from 'svelte';
	import { ethers } from 'ethers';
	import Web3Modal from 'web3modal';
	import { QueryClient, QueryClientProvider } from '@tanstack/svelte-query';
	import { browser } from '$app/environment';
  
  
  </script>
  
  <html lang="en">
	  <head>
		  <meta charset="UTF-8" />
		  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		  <title>FintechMe</title>
		
		  <!-- Favicon -->
		  <link rel="shortcut icon" href="assets/img/Liya-images/FTM.png" type="image/x-icon" />
		
		  <!-- Css Files -->
		  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		  <link rel="stylesheet" href="assets/css/fontawesome.min.css" />
		  <link rel="stylesheet" href="assets/css/magnific-popup.min.css" />
		  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
		  <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />
		  <link rel="stylesheet" href="assets/css/aos.css" />
		  <link rel="stylesheet" href="assets/css/main.css" />
		</head>
  
	  <body data-sveltekit-preload-data="hover">
		  <script src="assets/js/bootstrap.min.js"></script>
		  <script src="assets/js/jquery.min.js"></script>
		  <script src="assets/js/jquery.magnific-popup.min.js"></script>
		  <script src="assets/js/owl.carousel.min.js"></script>
		  <script src="assets/js/apexcharts.min.js"></script>
		  <script src="assets/js/charts.js"></script>
		  <script src="assets/js/aos.js"></script>
		  <script src="assets/js/main.js"></script>
		  <QueryClientProvider >
			  <slot />
		  </QueryClientProvider>
	  </body>
  </html>
  