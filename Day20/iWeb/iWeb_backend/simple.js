// 使用Node.js创建一个最简单的动态Node.js服务器

// 引入Node.js官方提供的HTTP模块：可用于处理客户端请求
const http = require('http')

// 创建一个动态的Web服务器
let server = http.createServer(function(req,res) {
	// 当接收到客户端请求后，向服务器输出一个欢迎消息
	res.end('Welcome to My Site !')
})

// 启动Web服务器，就是让它监听在特定的端口上
server.listen(8080)