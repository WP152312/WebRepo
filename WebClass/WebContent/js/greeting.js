

	function menu_over(e) {
		e.setAttribute("class", "nav-item active");
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}

	
	
	
	
	
	

	// jquery를 이용해 로그인 하기
	$(document).ready(
			function() {
				$('#loginForm').submit(
						function(event) {
							// 자동 submit되는 기능을 막음
							event.preventDefault();

							// id pwd 값을 가져오기
							// document.getElementById("id").value 하지만 길어서 jquery에서 모든 요소를 $로 가져온다.
							var id = $('#id').val();
							// document.getElementById("pwd").value
							var pwd = $('#pwd').val();

							// 서버로 post 방식으로 전송(ajax)
							$.post("http://httpbin.org/post", {
								"id" : id,
								"pwd" : pwd
							}, function(data) {
								//alert(data.form.id + '님 로그인 되었습니다.')
								var myModal = $('#myModal');
								myModal.modal();
								myModal.find('.modal-body').text(
										data.form.id + '님 로그인 되었습니다.')
							});

						});
			});

	
	// jquery를 이용해 로그인 하기
	$(document).ready(
			function() {
				$('#LoginForm').submit(
						function(event) {
							// 자동 submit되는 기능을 막음
							event.preventDefault();

							// id pwd 값을 가져오기
							// document.getElementById("id").value 하지만 길어서 jquery에서 모든 요소를 $로 가져온다.
							var id = $('#id').val();
							// document.getElementById("pwd").value
							var pwd = $('#pwd').val();

							// 서버로 post 방식으로 전송(ajax)
							$.post("http://httpbin.org/post", {
								"id" : id,
								"pwd" : pwd
							}, function(data) {
								//alert(data.form.id + '님 로그인 되었습니다.')
								var myModal = $('#myModal');
								myModal.modal();
								myModal.find('.modal-body').text(
										data.form.id + '님 회원가입되었습니다.')
							});

						});
			});
	
	

