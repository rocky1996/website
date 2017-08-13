
function autoPlay(){
	var div1 = document.querySelectorAll('li');//querySelectorAll这个标签的作用是选取页面所有的li标签
	var div2 = document.querySelectorAll('.right');
	for(var i=0;i<div1.length;i++){
	div1[i].index = i;//给每个按钮添加一个自定义属性，存的是他们对应的索引值
	div1[i].onclick=function(){
	for(var i=0;i<div1.length;i++){
				// div1[i].className=' ';
				div2[i].style.display="none";
				};
				this.className = 'li';
				div2[this.index].style.display='block';//把当前点击li的下表传入div中，使其下标相同，因为他们都默认输出的是 0 1 2  所以可以对应输出
			};
		};
	};
	function fun(){

var wrap=document.getElementById('wrap'),
pic=document.getElementById('pic').getElementsByTagName("li"),
list=document.getElementById('list').getElementsByTagName('li'),
index=0,
timer=null;

// 定义并调用自动播放函数
timer = setInterval(autoPlay, 2000);

// 鼠标划过整个容器时停止自动播放
wrap.onmouseover = function () {
clearInterval(timer);
}

// 鼠标离开整个容器时继续播放至下一张
wrap.onmouseout = function () {
timer = setInterval(autoPlay, 2000);
}
// 遍历所有数字导航实现划过切换至对应的图片
for (var i = 0; i < list.length; i++) {
list[i].onmouseover = function () {
clearInterval(timer);
index = this.innerText - 1;
changePic(index);
};
};

function autoPlay () {
if (++index >= pic.length) index = 0;
changePic(index);
}

// 定义图片切换函数
function changePic (curIndex) {
	for (var i = 0; i < pic.length; ++i) {
		pic[i].style.display = "none";
		list[i].className = "";
	}
		pic[curIndex].style.display = "block";
		list[curIndex].className = "on";
}}
	
