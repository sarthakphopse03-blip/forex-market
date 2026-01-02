<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Market Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <h1>📈 Market Dashboard</h1>
</header>

<section class="market">
    <h2>Live Crypto Prices</h2>
    <table>
        <tr>
            <th>Asset</th>
            <th>Price (INR)</th>
        </tr>
        <tr>
            <td>Bitcoin</td>
            <td id="btc">Loading...</td>
        </tr>
        <tr>
            <td>Ethereum</td>
            <td id="eth">Loading...</td>
        </tr>
    </table>
</section>

<section class="chart">
    <h2>BTC Chart</h2>
    <div id="tradingview-widget"></div>
</section>

<script src="script.js"></script>

<!-- TradingView Widget -->
<script src="https://s3.tradingview.com/tv.js"></script>
<script>
new TradingView.widget({
    container_id: "tradingview-widget",
    width: "100%",
    height: 400,
    symbol: "BTCUSDT",
    interval: "D",
    timezone: "Asia/Kolkata",
    theme: "dark",
    style: "1",
    locale: "en"
});
</script>

</body>
</html>
