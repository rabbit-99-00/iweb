/* 
iWeb项目的后台动态Web服务器
功能:“接受请求，返回响应”
	1.接受客户端请求的HTTP请求(request)，简写req；
	2.读取请求中客户端提交来的数据；
	3.向数据库服务器提交SQL命令,以操作底层数据；
	4.最后向客户端发送HTTP响应(response)，简写res，说明执行成功还是失败；
 */

// 常量 const 变量 let

// 引入第三方提供的express模块
const express = require('express');
// 使用第三方模块，创建一个Web服务器，类似于Java中的Tomcat或C#中的IIS
let application = express();
// 让Web服务器<监听>在指定的端口【端口总数：65535[2个字节16个比特]】上，即启动Web服务器
let port = 5050;  // 提示：此处在为新浪云服务器做铺垫
// application.listen(port);  // 监听 + 回调函数 = 得到下面的
application.listen(5050, ()=>{
	console.log('Server Listening on Port :', port);
})
// 以上证明该服务器已启动成功

// 代码修改,要重启服务器。按Ctrl + C关闭命令行界面代码

/* 
// 让Web服务器可以接收一个特定的请求，并回复该请求
application.get('/index', (req, res)=>{
	res.send('Welcome to My Site Index !')
})
// 让Web服务器可以接收一个特定的请求，并回复该请求
application.get('/login', (req, res)=>{
	res.send('Welcome to My Login Page !')
})
 */

/* 
	创建数据库连接池，其中包含10个连接，用于连接到数据库
 */

// 导入第三方提供的mysql模块
const mysql = require('mysql');
// 使用第三方模块，创建数据库连接池
let pool = mysql.createPool({
	host: '127.0.0.1',    // 数据库服务器的地址
	port: '3306',        // 数据库服务器的端口号
	user: 'root',         // 数据库管理员用户名
	password: '',         // 数据库管理员登录密码
	database: 'iweb',     // 数据库名称
	
	connectionLimit: 10,  // 数据库连接池的最大数量
});

/* 
	API 1.1：向客户端输出“排名前12位的最新课程
  * 请求方法：GET
  * 请求地址：/course/newset
  * 请求参数：无
  * 响应数据：
	[
		{
			id: 3,
			course_name: '微信小程序开发',
			pic: 'img/course/03.jpg',
			teacher_name: '程涛',
			price: 599
		},
		{
			......
		},
		......
	]
 */

application.get('/course/newest', (req, res)=>{
	// res.send([{id:3},{id:9},{id:5}])
	
	// 向数据库服务器发送查询请求,获得必需的课程数据
	// let sql = 'SELECT * FROM iw_course';
	
	// 要求①：只需要id，name，pic，price，其它的不要
	// let sql = 'SELECT id,name,pic,price FROM iw_course';
	
	// 要求②：只要前12条数据(即从第0行开始读取12行)
	// let sql = 'SELECT id,name,pic,price FROM iw_course LIMIT 0, 12';
	
	// 要求③：必须是最新课程(即课程编号由大到小排序)
	// let sql = 'SELECT id,name,pic,price FROM iw_course ORDER BY ID DESC LIMIT 0, 12';
	// 要求④：还要跨表查询（course和teacher两个表）
	// 注意:当两个表中有相同属性时,你要凉凉啦!!!
	let sql = 'SELECT course_id,course_name,iw_course.pic,price,teacher_name FROM iw_course,iw_teacher WHERE iw_course.teacher_id=iw_teacher.teacher_id ORDER BY course_id DESC LIMIT 0, 12';
	
	pool.query(sql, (err, result)=>{
		if (err) { //数据库操作执行错误
			console.log('数据库查询失败！');
			throw err;
		}
		//数据库操作顺利完成，查询结果保存在result中
		console.log('数据库查询成功！');
		// console.log(result);
		// 将数据库返回的课程输出给客户端
		res.send(result)
	})
})

// API1.2:  获取热门课程前12个   GET/course/hottest
application.get('/course/hottest', (req, res)=>{
	let sql = 'SELECT * FROM iw_course LIMIT 0, 12';
	pool.query(sql, (err, result)=>{
		if (err) {
			console.log('数据库查询失败！');
			throw err;
		}
		console.log('数据库查询成功！');
		res.send(result);
	})
})

// API3.1:  获取讲师列表中的前5个   GET/teacherest
application.get('/teacherest', (req, res)=>{
	let sql = 'SELECT * FROM iw_teacher LIMIT 0, 5';
	pool.query(sql, (err, result)=>{
		if (err) {
			console.log('数据库查询失败！');
			throw err;
		}
		console.log('数据库查询成功！');
		res.send(result);
	})
})

// API2.1:  获取校区列表中的前5个   GET/schoolest
application.get('/schoolest', (req, res)=>{
	let sql = 'SELECT * FROM iw_campus LIMIT 0, 5';
	pool.query(sql, (err, result)=>{
		if (err) {
			console.log('数据库查询失败！');
			throw err;
		}
		console.log('数据库查询成功！');
		res.send(result);
	})
})
