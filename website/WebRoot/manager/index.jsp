<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>西邮乐图网</title>
	<meta charset="utf-8"/>
	<link href="${pageContext.request.contextPath }/css/book.css" rel="stylesheet" type="text/css"/>
	<script src="${pageContext.request.contextPath }/js/tab.js"></script>
</head>
<body>
	<!-- 头部的宽盒子，包含表单，个人信息 -->
<div id="biggest">
	<div class="head">
		<div class="one">
			<div class="title">
				<h1>西邮乐图网</h1>
			</div>
			<input type="text" id="search" value="搜索..." />
			<input type="button" value=" " id="button-picture"/>
		</div>
		<c:if test="${sessionScope.u == null }">
			<div class="two">

		        <a href="${pageContext.request.contextPath }/manager/register.jsp"><button  class="button">注册</button></a>
		       	<a href="${pageContext.request.contextPath }/manager/login.jsp"><button  class="button">登录</button></a>
		        <a href="${pageContext.request.contextPath }/manager/admin.jsp"><button  class="button">管理员</button></a>
			</div>
		</c:if>
	</div> 
	<div class="head-next">
	<c:if test="${sessionScope.u != null }">
			<div class="first">
				<div class="yourself">
					<img src="${pageContext.request.contextPath }/files/${sessionScope.u.image}" id="yourself"/>
					<span style="width:200px;height:50px;color:white;display:block;float:left;margin-top:8px;">欢迎您:${sessionScope.u.username }</br><a href="${pageContext.request.contextPath }/servlet/UserServlet?operation=logout" style="color:white;">退出</a></span>
				</div>
				<!-- <a href="#" title="个人中心"><h1 class="shadow">M Y S E L F</h1></a>-->
			</div>
	</c:if>
	<!-- 个人头像 -->
	<c:if test="${sessionScope.u == null }">
		<div class="first">
			<div class="yourself">
				<img src="${pageContext.request.contextPath }/image/self.jpg" id="yourself"/>
			</div>
			<a href="#" title="个人中心"><h1 class="shadow">M Y S E L F</h1></a>
		</div>
	</c:if>
	<!-- 图片轮播 -->
		
	<div class="second">
		<div class="wrap" id='wrap'>
	 		<ul id="pic">
				<li style="display:block;">
					<span><img src="${pageContext.request.contextPath }/image/timg.jpg" alt=""></span>
					<span><img src="${pageContext.request.contextPath }/image/timg.jpg" alt=""></span>
				</li>
				<li>
					<span><img src="${pageContext.request.contextPath }/image/head.jpg" alt=""></span>
					<span><img src="${pageContext.request.contextPath }/image/head.jpg" alt=""></span>
				</li>
				<li>
					<span><img src="${pageContext.request.contextPath }/image/snow.jpg" alt=""></span>
					<span><img src="${pageContext.request.contextPath }/image/snow.jpg" alt=""></span>
				</li>
				<li>
					<span><img src="${pageContext.request.contextPath }/image/self.jpg" alt=""></span>
					<span><img src="${pageContext.request.contextPath }/image/self.jpg" alt=""></span>
				</li>
				<li>
					<span><img src="${pageContext.request.contextPath }/image/flower.jpg" alt=""></span>
					<span><img src="${pageContext.request.contextPath }/image/flower.jpg" alt=""></span>
				</li> 
	 		</ul>
			<ol id="list">
				<li class="on">1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
			</ol>
		</div>
	</div>

		<!-- 购物车，我的收藏 -->
		<div class="third">
			<c:if test="${sessionScope.u == null }">
				<a href="#" title="购物车"><h1 class="text" id="text">C A R T</h1></a>
				<a href="#" title="我的收藏"><h1 class="text">COLLECTION</h1></a>
			</c:if>
			<c:if test="${sessionScope.u != null }">
				<a href="#"><span class="tabBtn active">购物车</span></a>
				<a href="#"><span class="tabBtn">我的订单</span></a>
				<div class="box" style="display:block" id="boxOne"></div>
				<div class="box" id="boxTwo"></div>
			</c:if>
		</div>
	</div>
	
	<!-- 选项卡切换 -->
	<div class="leftf">
		<div class="left">
			<!-- 
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li>
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			<li id="none">
				<div class="link">
					<a href="#"><img src="${pageContext.request.contextPath }/image/book.png" alt="这是一个书的图片" class="pictures"/></a>
					<a href="#"><p>好书上架</p></a>
				</div>
			</li>
			 -->
			 <c:forEach items="${sessionScope.cs }" var="c">
			 	<li><a href="${pageContext.request.contextPath }/servlet/ClassifyServlet?opertion"></a></li>
			 </c:forEach>
		</div>
		<div class="right" style="display: block;">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介one</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介two</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介three</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介four</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介five</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介six</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
		<div class="right">
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介seven</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
			<div class="four-book">
				<img src="${pageContext.request.contextPath }/image/snow.jpg" alt="雪景"/>
				<p>这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介这里是对相关书的简介</p>
			</div>
		</div>
	</div>
	<div id="line">
	</div>
	<!-- 底部的宽盒子，包含联系我们之类 -->
	<div class="foot">
		<h5>更多链接</h5>
		<!-- 小图标动画 -->
		<a href="#"><img src="${pageContext.request.contextPath }/image/weibo.png" src="微博" id="special"/></a>
		<a href="#"><img src="${pageContext.request.contextPath }/image/wexin.png" src="微博" class="special1"/></a>
		<a href="#"><img src="${pageContext.request.contextPath }/image/qq.png" src="微博" class="special1"/></a>
		<a href="#"><img src="${pageContext.request.contextPath }/image/room.png" src="微博" class="special1"/></a>
		<p>
		<a href="#"><span>微博</span></a>
		<a href="#"><span>微信</span></a>
		<a href="#"><span>qq</span></a>
		<a href="#"><span>qq空间</span></a>
		</p>
		<div>
		<a href="#"><span class="finall">关于我们</span></a>
		<a href="#"><span class="finall">计算机应用技术协会</span></a>
		<a href="#"><span class="finall">1234565789</span></a>
		<div>
	</div>
</div>
</body>
</html>
	<script>
		window.onload=function(){
			var aBtn=document.getElementsByClassName('tabBtn');
			var aBox=document.getElementsByClassName('box');
			for(var i=0;i<aBtn.length;i++){
				aBtn[i].index=i;
				aBtn[i].onclick=function(){
					for(var i=0;i<aBtn.length;i++){
						aBtn[i].className="tabBtn";
						aBox[i].style.display="none";
					}
					this.className="tabBtn active";
					aBox[this.index].style.display="block";
				}
			}
			autoPlay();
			fun();
		}
	</script>