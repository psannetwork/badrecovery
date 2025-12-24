const express = require('express');
const path = require('path');

const app = express();
const PORT = 3000;

// 静的ファイルを配信する
app.use(express.static(path.join(__dirname)));

// ルートパスにアクセスがあった場合、builder.htmlを表示
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'builder.html'));
});

// サーバーを起動
app.listen(PORT, () => {
  console.log(`GoodSilver Web Builder is running on http://localhost:${PORT}`);
});