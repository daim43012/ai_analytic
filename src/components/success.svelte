<script>
    let telegramUrl = 'https://t.me/subscription_alert_bot';
    let countdown = 10;
  
    const goNow = () => {
      window.location.href = telegramUrl;
    };
  
    const startCountdown = () => {
      const timer = setInterval(() => {
        countdown--;
        if (countdown <= 0) {
          clearInterval(timer);
          goNow();
        }
      }, 1000);
    };
  
    startCountdown();
  </script>
  
  <style>
    body {
      margin: 0;
      background: linear-gradient(to bottom right, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', sans-serif;
    }
  
    .container {
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
  
    .card {
      background: white;
      padding: 2.5rem;
      border-radius: 1rem;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 420px;
      width: 90%;
    }
  
    h1 {
      color: #2ecc71;
      font-size: 2rem;
      margin-bottom: 1rem;
    }
  
    p {
      color: #555;
      font-size: 1.1rem;
    }
  
    button {
      margin-top: 1.5rem;
      padding: 0.8rem 1.5rem;
      font-size: 1rem;
      background-color: #2ecc71;
      border: none;
      border-radius: 8px;
      color: white;
      cursor: pointer;
      transition: background 0.3s;
    }
  
    button:hover {
      background-color: #27ae60;
    }
  
    .countdown {
      margin-top: 1rem;
      font-size: 0.95rem;
      color: #777;
    }
  </style>
  
  <div class="container">
    <div class="card">
      <h1>🎉 Payment Successful</h1>
      <p>Your subscription is now active. You'll receive a message in Telegram shortly.</p>
  
      <button on:click={goNow}>Open Telegram Now</button>
  
      <div class="countdown">Redirecting in {countdown} seconds...</div>
    </div>
  </div>
  