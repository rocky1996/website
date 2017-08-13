<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://com.acat/jsp/jstl/myfunctions" prefix="myfn"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录中心</title>
            <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/register.css">
            <script type="text/javascript" src="${pageContext.request.contextPath }/js/res1.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath }/js/jq.js"></script>
        <script>
        seajs.off("load");
        seajs.off("fetch");
        seajs.data.charset = 'gb2312';
    </script>
            <link type="text/css" rel="stylesheet"  href="${pageContext.request.contextPath }/css/plugin.css" source="widget"/>
			<link href="${pageContext.request.contextPath }/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <img src="${pageContext.request.contextPath }/image/12.png" width=80px height=80px float=left margin-top=24px>
        <!-- <a href="http://portrait8.sinaimg.cn/3004708247/blog/180" class="logo">
        </a> -->
        <div class="logo-title">欢迎管理员进行数据的添加</div>
    </div>
</div>


<script language="javascript">
	function qiehuan(num){
		for(var id = 0;id<=9;id++)
		{
			if(id==num)
			{
				document.getElementById("qh_con"+id).style.display="block";
				document.getElementById("mynav"+id).className="nav_on";
			}
			else
			{
				document.getElementById("qh_con"+id).style.display="none";
				document.getElementById("mynav"+id).className="";
			}
		}
	}
</script>
<div id=menu_out>
  <div id=menu_in>
    <div id=menu>
      <UL id=nav>
        <LI><A class=nav_on id=mynav0 onmouseover=javascript:qiehuan(0) href="#"><SPAN>分类管理</SPAN></A></LI>
        <LI class="menu_line"></LI>
        <li><a href="#" onmouseover="javascript:qiehuan(1)" id="mynav1" class="nav_off"><span>图书管理</span></a></li>
        <li class="menu_line"></li>
        <li><a href="#" onmouseover="javascript:qiehuan(2)" id="mynav2" class="nav_off"><span>订单管理</span></a></li>
        <li class="menu_line"></li>
        <li><a href="${pageContext.request.contextPath }/manager/index.jsp" onmouseover="javascript:qiehuan(2)" id="mynav2" class="nav_off"><span>退出管理员</span></a></li>
        <li class="menu_line"></li>
        
        
      </UL>
      <div id=menu_con>
        <div id=qh_con0 style="DISPLAY: block">
          <UL>
            <LI><a href="${pageContext.request.contextPath }/manager/addclassify.jsp"><span>添加分类</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="${pageContext.request.contextPath }/servlet/ClassifyServlet?operation=showclassify"><SPAN>查询分类</SPAN></A></LI>
            <LI class=menu_line2></LI>
           
          </UL>
        </div>
        <div id=qh_con1 style="DISPLAY: none">
          <UL>
            <LI><a href="${pageContext.request.contextPath }/servlet/BookServlet?operation=showAllClassify"><span>添加图书</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="${pageContext.request.contextPath }/servlet/BookServlet?operation=showAllbook"><SPAN>查询图书</SPAN></A></LI>
            <LI class=menu_line2></LI>
           
          </UL>
        </div>
        <div id=qh_con2 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>待处理订单</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>已处理订单</SPAN></A></LI>
            <LI class=menu_line2></LI>
           
          </UL>
        </div>
        
      </div>
    </div>
  </div>
</div>


<div id="form-footer" class="footer w">
    <div class="links">
    </div>
    <div class="copyright">
        Copyright&copy;2017&nbsp;&nbsp;乐图网&nbsp;版权所有
    </div>
</div>


<script type="text/javascript">
    seajs.use('http://misc.360buyimg.com/user/reg/1.0.0/js/register.1130', function (reg) {
            reg.init();
        })
</script>
    </body>
</html>
