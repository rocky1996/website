<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/manager/adminheader.jsp" %>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <!-- <img src="${pageContext.request.contextPath }/image/12.png" width=80px height=80px float=left margin-top=24px> -->
        <!-- <a href="http://portrait8.sinaimg.cn/3004708247/blog/180" class="logo">
        </a> -->
        <div class="logo-title">全部分类</div>
    </div>
</div>

	<table align="center" border="0" width="60%">
		<tr>
			<td>
				<c:if test="${empty cs }">没有图书信息</c:if>
				<c:if test="${!empty cs }">
					<table border="1" width="100%">
						<tr>
							<th>选择</th>
							<th>图书名称</th>
							<th>所属分类</th>
							<th>图书作者</th>
							<th>图书价格</th>
							<th>图书图片</th>
							<th>图书描述</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${cs }" var="c" varStatus="vs">
							<tr>
								<td align="center">
									<input type="checkbox" name="ids" value="${c.id }">
								</td>
								<td align="center">${c.name }</td>
								<td align="center">${c.classify_id } </td>
								<td align="center">${c.author }</td>
								<td align="center">${c.price }</td>
								<td align="center">
									<a href="${pageContext.request.contextPath }/file/${c.image}"><button>点击查看</button></a>
								</td>
								<td align="center">${c.description }</td>
								<td align="center">
									<button><a href="${pageContext.request.contextPath }/servlet/BookServlet?operation=updatebookUI&id=${c.id}">修改</a></button>
									<button><a href="${pageContext.request.contextPath }/servlet/BookServlet?operation=deletebook&id=${c.id}">删除</a></button>
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</td>
		</tr>
	</table>

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
