<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.net.URL"%>
<%@ page import = "java.net.URLConnection"%>
<%@ page import = "java.io.InputStream"%>
<%@ page import = "java.io.InputStreamReader"%>
<%@ page import = "java.io.BufferedReader"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="UTF-8">
		<title>疫情地图</title>
		<script type="text/javascript">
		<% 
		    URL url = new URL("https://zaixianke.com/yq/all");
		    URLConnection conn = url.openConnection();
		    InputStream is = conn.getInputStream();
		    BufferedReader br = new BufferedReader(new InputStreamReader(is, "utf-8"));
		    String text = br.readLine();
		    br.close();
		 %>
    	var data = <%=text%>;
		</script>
		<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/echarts/4.7.0/echarts.min.js"></script> 
		<script src="http://cdn.zaixianke.com/china.js"></script>
		<script src="http://cdn.zaixianke.com/world.js"></script>
	</head>
<body>
	<div id="main" style="width: 100%;height:600px;"></div> <br>
	<div style="text-align:center">
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(0)">国内累计</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(1)">国内新增</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(2)">全球累计</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(3)">全球新增</a>
	</div>
	<script src="control.js"></script>
</body>
</html>