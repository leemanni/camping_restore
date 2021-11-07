/**
 *  지도 관련 코드 javascript 부분으로 도출해내기
 */
window.onload = function() {
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(36.80, 127.51), // 지도의 중심좌표
			        level: 12 // 지도의 확대 레벨
			    };
			
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	var endadd = "";
	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
	    //김호연
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/스카이글램핑,35.812066145941905,129.307340127348" style="color:blue" target="_blank">스카이글램핑</a></div>' ,
	        latlng: new kakao.maps.LatLng(35.812066145941905, 129.307340127348)
	    },
	    {
	    	content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/소금강 오토캠프장,37.815669000883595,128.70814875596878" style="color:blue" target="_blank text-align="center"">소금강오토캠프장</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.815669000883595, 128.70814875596878)
	    },
	    {
	    	content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/별마로 빌리지,37.12548580257027,128.58521121177222" style="color:blue" target="_blank">별마로빌리지</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.12548580257027, 128.58521121177222)
	    },
	    
	    //김재호
	    {
	    	content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/소풍 캠핑장,37.59499002279045,127.50849359131277" style="color:blue" target="_blank">소풍캠핑장</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.59499002279045, 127.50849359131277)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/서울북한산럭셔리카라반&수영장글램핑,37.65070849812522,126.93774986919631" style="color:blue" target="_blank">서울북한산럭셔리카라반</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.65070849812522, 126.93774986919631)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/글램비 글램핑,37.16920275874628,126.62845615569319" style="color:blue" target="_blank">글램비글램핑</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.16920275874628, 126.62845615569319)
	    },
	    
	    //신영진
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/달빛정원글랭핑&캠핑,37.59478196151374,127.49029467262564" style="color:blue" target="_blank">달빛정원글랭핑&캠핑</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.59478196151374, 127.49029467262564)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/포천 프로미스 캠프,38.051617378866915,127.34848592047923" style="color:blue" target="_blank">포천프로미스캠프</a></div>' ,
	        latlng: new kakao.maps.LatLng(38.051617378866915, 127.34848592047923)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/태안 캠핑코리아,36.833928722298,126.18283664202004" style="color:blue" target="_blank">태안캠핑코리아</a></div>' ,
	        latlng: new kakao.maps.LatLng(36.833928722298, 126.18283664202004)
	    },
	    
	    //이원희
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/동화힐링캠프글램핑,37.8920618236847,126.84086966931291" style="color:blue" target="_blank">동화힐링캠프 글램핑</a></div>' ,		        
	        latlng: new kakao.maps.LatLng(37.8920618236847, 126.84086966931291)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/하늘 숲 글램핑파크,37.90518589342931,127.56198518465905" style="color:blue" target="_blank">하늘 숲 글램핑파크</a></div>' ,	
	        latlng: new kakao.maps.LatLng(37.90518589342931, 127.56198518465905)
	    },
	    { 
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/왕산 오토캠핑장,37.45895389595375,126.36637688712733" style="color:blue" target="_blank">왕산오토캠핑장</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.45895389595375, 126.36637688712733)
	    },	 
	    
	    //전상욱
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/동강전망휴양림 오토캠핑장,37.26096665868323,128.6078757825842" style="color:blue" target="_blank">동강전망휴양림 오토<br>캠핑장</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.26096665868323, 128.6078757825842)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/변산반도국립공원 고사포 야영장,35.661542818611686,126.50780945530366" style="color:blue" target="_blank">변산반도국립공원 <br>고사포야영장</a></div>' ,
	        latlng: new kakao.maps.LatLng(35.661542818611686, 126.50780945530366)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/사천비토솔섬 오토캠핑장,34.98756277821912,127.96620032644817" style="color:blue" target="_blank">사천비토솔섬<br/>오토캠핑장</a></div>' ,		        
	        latlng: new kakao.maps.LatLng(34.98756277821912, 127.96620032644817)
	    },	 
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/호수산장관광농원,37.23242719212892,127.54174179952983" style="color:blue" target="_blank">호수산장관광농원</a></div>' ,
	        latlng: new kakao.maps.LatLng(37.23242719212892, 127.54174179952983)
	    },
	    {
	        content: '<div class=\'mapinfo\'><a href="https://map.kakao.com/link/to/솔바람 캠핑장,36.025758183837276,126.66594238008817" style="color:blue" target="_blank">솔바람캠핑장</a></div>' ,		   
	        latlng: new kakao.maps.LatLng(36.025758183837276, 126.66594238008817)
	    },
	
	];
	/* 아래와 같이도 할 수 있습니다 */
	
	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng // 마커의 위치
	    });
	
	    // 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new kakao.maps.InfoWindow({
	        content: positions[i].content // 인포윈도우에 표시할 내용
	    });
	            infowindow.open(map, marker);
		}
}