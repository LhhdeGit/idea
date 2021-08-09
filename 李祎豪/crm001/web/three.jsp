<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
    <select  name="" id="sheng">
        <option value="1">河南省</option>
    </select>
    <select  name="" id="city">
        <option value="1">郑州市</option>
    </select><select  name="" id="qu">
        <%--<option value="1">管城区</option>--%>
    </select>

<script>
    $(function () {
        //1.ajax 访问后台
        $.ajax({
            url:'/AllCityServlet',
            type:'GET',
            data:'',
            dataType:'JSON',
            success:function (res) {
                $each(res.citylist,function (index,item) {
                    console.log(item.p)
                    $("#sheng").empty();
                    $("#sheng").append("<option value="+item.p+">"+item.p+"</option>")

                    $each(item.c,function (index,item) {
                        $("#city").empty();
                        $("#city").append("<option value="+item.n+">"+item.n+"</option>")

                    $each(item.a ,function(index,item) {
                            $("#qu").empty();
                            $("#qu").append("<option value="+item.s+">"+item.s+"</option>")
                        })
                    });


                });
            }

        });
    });
</script>
</body>
</html>
