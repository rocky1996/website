<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人注册</title>
            <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/register.css">
            <script type="text/javascript" src="${pageContext.request.contextPath }/js/res1.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath }/js/jq.js"></script>
        <script>
        seajs.off("load");
        seajs.off("fetch");
        seajs.data.charset = 'gb2312';
    </script>
            <link type="text/css" rel="stylesheet"  href="${pageContext.request.contextPath }/css/plugin.css" source="widget"/>
</head>

<body>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <img src="${pageContext.request.contextPath }/image/12.png" width=80px height=80px float=left margin-top=24px>
        <!-- <a href="http://portrait8.sinaimg.cn/3004708247/blog/180" class="logo">
        </a> -->
        <div class="logo-title">欢迎注册</div>
        <div class="have-account">已有账号？ <a href="${pageContext.request.contextPath }/manager/login.jsp">请登录</a></div>
    </div>
</div>

<div class="container w">
    <div class="main clearfix" id="form-main">
        <div class="reg-form fl">
            <form action="${pageContext.request.contextPath }/servlet/UserServlet?operation=register" enctype="multipart/form-data" method="post"><!-- id="register-form"  -->
                <div class="form-item form-item-account" id="form-item-account">
                    <label>用　户　名</label>
                    <input type="text" id="form-account" name="username" class="field" autocomplete="off" maxlength="20"
                           placeholder="您的账户名和登录名"  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>设 置 密 码</label>
                    <input type="password" name="password" id="form-pwd" class="field" maxlength="20"
                           placeholder="建议至少使用两种字符组合" default="<i class=i-def></i>" />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>手 机 号</label>
                    <input type="text" name="mobilephone" id="form-pwd" class="field" maxlength="20"
                           placeholder="请输入手机号" default="<i class=i-def></i>" />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                 <div class="form-item">
                    <label>邮 箱</label>
                    <input type="text" name="email" id="form-pwd" class="field" maxlength="20"
                           placeholder="请输入正确的邮箱格式" default="<i class=i-def></i>" />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>地 址</label>
                    <input type="text" name="address" id="form-pwd" class="field" maxlength="20"
                           placeholder="请输入您的地址" default="<i class=i-def></i>" />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>上 传 图 片</label>
                    <input type="file" name="image" id="" class="field" maxlength="20"
                           placeholder="" default="<i class=i-def></i>" />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div>
                    <input type="submit" class="btn-register" value="立即注册"> <!--   -->
                </div>
            </form>
        </div>
        <div id="form-company" class="reg-other">
                            <div class="company-reg">
                    <a href="company.html" target="_blank" clstag="pageclick|keycount|201612011|3">
                        <i class="i-company"></i>
                        <span>企业用户注册</span>
                    </a>
                </div>
                    <div class="inter-cust">
                    <a href="foreign.html" target="_blank" clstag="pageclick|keycount|201612011|4">
                        <i class="i-global"></i>
                        <span>INTERNATIONAL<br/>CUSTOMERS</span>
                    </a>
                </div>
        </div>
    </div>
    <div class="input-tip">
        <span></span>
    </div><div class="input-tip">
        <span></span>
    </div><div class="input-tip">
        <span></span>
    </div><div class="input-tip">
        <span></span>
    </div><div class="input-tip">
        <span></span>
    </div><div class="input-tip">
        <span></span>
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
${u }
    </body>
</html>
