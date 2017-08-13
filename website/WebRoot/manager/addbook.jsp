<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/manager/adminheader.jsp" %>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <!-- <img src="${pageContext.request.contextPath }/image/12.png" width=80px height=80px float=left margin-top=24px> -->
        <!-- <a href="http://portrait8.sinaimg.cn/3004708247/blog/180" class="logo">
        </a> -->
        <div class="logo-title">添加图书</div>
    </div>
</div>

<div class="container w">
    <div class="main clearfix" id="form-main">
        <div class="reg-form fl">
            <form action="${pageContext.request.contextPath }/servlet/BookServlet?operation=addbook" enctype="multipart/form-data" method="post">
                <div class="form-item form-item-account" id="form-item-account">
                    <label>图 书 名 称</label>
                    <input type="text" id="form-account" name="name" class="field" autocomplete="off" maxlength="20"
                           placeholder="请 输 入 图 书 名 称"  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item form-item-account" id="form-item-account">
                    <label>图 书 作 者</label>
                    <input type="text" id="form-account" name="author" class="field" autocomplete="off" maxlength="20"
                           placeholder="请 输 入 图 书 作 者"  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item form-item-account" id="form-item-account">
                    <label>图 书 价 格</label>
                    <input type="text" id="form-account" name="price" class="field" autocomplete="off" maxlength="20"
                           placeholder="请 输 入 图 书 价 格"  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item form-item-account" id="form-item-account">
                    <label>图 书 图 片</label>
                    <input type="file" id="form-account" name="image" class="field" autocomplete="off" maxlength="20"
                           placeholder=""  />
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>图 书 描 述</label>
                   	<textarea rows="3" cols="38" name="description" id="form-pwd" ></textarea>
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <!-- 
                <tr>
					<td>所属分类</td>
					<td>
						<select name="category_id">
							<c:forEach items="${cs }" var="c">
								<option value="${c.id }">${c.name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				 -->
				 <div class="form-item">
				 	<label>所 属 分 类</label>
				 	<select name="classify_id">
				 		<c:forEach items="${cs }" var="c">
				 			<option value="${c.id }">${c.name }</option>
				 		</c:forEach>
				 	</select>
				 </div>
                 <div class="input-tip">
                    <span></span>
                </div>
                <div>
                    <input type="submit" class="btn-register" value="提交"> 
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
