
function autoPlay(){
	var div1 = document.querySelectorAll('li');//querySelectorAll�����ǩ��������ѡȡҳ�����е�li��ǩ
	var div2 = document.querySelectorAll('.right');
	for(var i=0;i<div1.length;i++){
	div1[i].index = i;//��ÿ����ť���һ���Զ������ԣ���������Ƕ�Ӧ������ֵ
	div1[i].onclick=function(){
	for(var i=0;i<div1.length;i++){
				// div1[i].className=' ';
				div2[i].style.display="none";
				};
				this.className = 'li';
				div2[this.index].style.display='block';//�ѵ�ǰ���li���±���div�У�ʹ���±���ͬ����Ϊ���Ƕ�Ĭ��������� 0 1 2  ���Կ��Զ�Ӧ���
			};
		};
	};
	function fun(){

var wrap=document.getElementById('wrap'),
pic=document.getElementById('pic').getElementsByTagName("li"),
list=document.getElementById('list').getElementsByTagName('li'),
index=0,
timer=null;

// ���岢�����Զ����ź���
timer = setInterval(autoPlay, 2000);

// ��껮����������ʱֹͣ�Զ�����
wrap.onmouseover = function () {
clearInterval(timer);
}

// ����뿪��������ʱ������������һ��
wrap.onmouseout = function () {
timer = setInterval(autoPlay, 2000);
}
// �����������ֵ���ʵ�ֻ����л�����Ӧ��ͼƬ
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

// ����ͼƬ�л�����
function changePic (curIndex) {
	for (var i = 0; i < pic.length; ++i) {
		pic[i].style.display = "none";
		list[i].className = "";
	}
		pic[curIndex].style.display = "block";
		list[curIndex].className = "on";
}}
	
