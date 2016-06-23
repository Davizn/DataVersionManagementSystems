<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<button id="connect">connect</button>
	<button id="disconnect" disabled="">disconnect</button>
	<input type="text" id="message">
	<textarea id="messages" style="width: 100%; height: 200px;" readonly=""></textarea>
	<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
	<script type="text/javascript">
	    var ws;
	 
	    function connect() {
	        ws = new WebSocket('ws://localhost:8090/echo');
	        ws.onopen = function () {
	            console.log('websocket opened');
	        };
	        ws.onmessage = function (message) {
	            console.log(message);
	            console.log('receive message : ' + message.data);
	            $('#messages').val($('#messages').val() + message.data + '\n');
	            document.getElementById('messages').scrollTop = document.getElementById('messages').scrollHeight;
	        };
	        ws.onclose = function (event) {
	            console.log(event);
	            console.log('websocket closed');
	        };
	    }
	 
	    function disconnect() {
	        if (ws) {
	            ws.close();
	            ws = null;
	        }
	    }
	 
	    $(function () {
	        $('#connect').click(function () {
	            connect();
	            $(this).attr('disabled', true);
	            $('#disconnect').removeAttr('disabled');
	        });
	 
	        $('#disconnect').click(function () {
	            disconnect();
	            $(this).attr('disabled', true);
	            $('#connect').removeAttr('disabled');
	        });
	 
	        $('#message').keydown(event, function () {
	            if (event.keyCode === 13) {
	                ws.send($(this).val());
	                $(this).val('');
	            }
	        });
	    });
	</script>

</body>
</html>