function setting(idx, mode, title, name, content) {
	var form = document.commentForm; // contentView.jsp 의 form 을 가져옴
	form.idx.value = idx;			// 수정 또는 삭제할 댓글 번호를 저장. 댓글 입력시 0 처리
	form.mode.value = mode;			// 댓글 작업 로드를 지정한다.(1: 저장, 2: 수정,3: 삭제)
	form.commentBtn.value = title;	// submit 버튼에 표시될 텍스트 수정
	form.name.value = name; 		// 댓글 작성자 이릅을 댓글 폼의 text 객체에 넣어준다]
	
//	co.content 넘겨 받으면 js 는 이스케이프 시퀀스가 포함된 데이터를 인수로 받지 못한다.따라서 정상적으로 실행안된다
//	이스케이프 시퀀스가 포함된 문자열을 인수로 넘겨 주려면 일반적으로 자주 사용하지 않는 문자열이나 줄바꿈에 사용하는 
//	<br/> 테그로 이스케이프 시퀀스를 치환시켜 javascript 함수의 인수로 데이터를 전달해야한다
//	즉 textArea 로 넘겨주려면 다시 이스케이프 시퀀스로 치환해서 넣어준다
	
//	java, jsp replace() => 다 바꿀 수 있음
//	js => 하나만 바낌 , 따라서 더이성  <br/> 테그가 나타나지 않을 때 까지 반복하며 '\r\n' 로 바꿔준다
	
	while(content.indexOf('<br/>') != -1){
		content = content.replace('<br/>', '\r\n');
	}
	
	form.content.value = content;	// 댓글 내용을 폼의 content 에 넣어줌
}


function name() {
    
}
