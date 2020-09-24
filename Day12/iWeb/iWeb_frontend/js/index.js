/* 轮播广告 */

// 当前正在显示哪个广告 --- current -----------------给轮播添加编号0,1,2,3
let currentCarousel = 0
// 轮播广告的总数      ---- total
let totalCarousel = 4

// 点击"下一张"按钮,自动切换到广告中的下一张
document.querySelector('[data-carousel="next"]').onclick=function() {
	// 轮播编号+1
	currentCarousel++
	/* 谨防越界 */
	if (currentCarousel >= totalCarousel) {
		// 如果已经切换到最后一张,之后,必须重回到第一张
		currentCarousel = 0
	}
	// 所谓新的轮播广告项:
	//   1.首先隐藏当前显示的广告项-------li删除active类
	document.querySelector('.carousel>.items>li.active').classList.remove('active')
	//   2.然后再让目标广告项显示出来-----li添加active类
	// 通过变量选择器找到变量,将它放到list中
	let list = document.querySelectorAll('.carousel>.items>li')
	// 编号为第x(currentCarousel)的轮播图 的 class 添加 .active
	list[currentCarousel].classList.add('active')
	
	// 切换广告指示器的显示：
	// 首先隐藏当前处于active状态的指示器——li删除active类
	document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	// 然后再让当前广告【 对应 】的指示器处于active状态——li添加active类
	list = document.querySelectorAll('.carousel>.indicators>li')
	list[currentCarousel].classList.add('active')
}

// 点击"上一张"按钮,自动切换到广告中的下一张
document.querySelector('[data-carousel="prev"]').onclick=function() {
	currentCarousel--
	if (currentCarousel <= 0) {
		// 如果已经切换到最后第一张,之后,必须重回到最后一张
		currentCarousel = 3
	}
	document.querySelector('.carousel>.items>li.active').classList.remove('active')
	let list = document.querySelectorAll('.carousel>.items>li')
	list[currentCarousel].classList.add('active')
	
	document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	list = document.querySelectorAll('.carousel>.indicators>li')
	list[currentCarousel].classList.add('active')
}

// // 切换广告指示器的显示：
// 首先隐藏当前处于active状态的指示器——li删除active类
// document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
// 然后再让当前广告对应的指示器处于active状态——li添加active类
// list = document.querySelectorAll('.carousel>.indicators')
// list[currentCarousel].classList.add('active')