/* 1.响应式导航条：点击汉堡包按钮时导航菜单从左侧进入；点击关闭按钮时导航菜单隐藏到左侧 */

// 根据属性选择器查找一个元素 document.querySelector('[]')
document.querySelector('[data-toggle="nav"]').onclick = function() {
	// alert('123')
	
	// 用js控制class的有和无
	// 将导航条从左侧移出来——给navbar添加active类
	document.querySelector('[data-target="nav"]').classList.add('active')
}

document.querySelector('[data-close="nav"]').onclick = function() {
	// 将导航菜单隐藏到左侧——给navbar去掉active类
	document.querySelector('[data-target="nav"]').classList.remove('active')
}