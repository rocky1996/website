<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/manager/adminheader.jsp" %>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <!-- <img src="${pageContext.request.contextPath }/image/12.png" width=80px height=80px float=left margin-top=24px> -->
        <!-- <a href="http://portrait8.sinaimg.cn/3004708247/blog/180" class="logo">
        </a> -->
        <div class="logo-title">添加分类</div>
    </div>
</div>

<div class="container w">
    <div class="main clearfix" id="form-main">
        <div class="reg-form fl">
            <form action="${pageContext.request.contextPath }/servlet/ClassifyServlet?operation=updateclassify" method="post"><!-- id="register-form"  -->
                <input type="hidden" name="id" value="${c.id }">
                <div class="form-item form-item-account" id="form-item-account">
                    <label>分 类 名 称</label>
                    <input type="text" id="form-account" name="name" class="field" autocomplete="off" maxlength="20" value="${c.name }"
                           placeholder="您的账户名和登录名"  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>分 类 描 述</label>
                   	<textarea rows="3" cols="38" name="description" id="form-pwd">${c.description }</textarea>
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div>
                    <input type="submit" class="btn-register" value="登录"> <!--   -->
                </div>
            </form>
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
 ${uu }
    </body>
</html>
