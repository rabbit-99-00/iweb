// 在控制台中输出九九乘法表
for (let i=1;i<=9;i++) {
	let output = ''  // 拼接
	for(let j=1;j<=i;j++) {
		output = output + i + '*' + j + '=' + i*j + ' '
	}
		console.log(output)
}