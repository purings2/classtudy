/**
 * classtudy사이트에서 사용될 모든 태그에 관련된 js파일입니다.
 */
// tag dropdown메뉴에서 버튼을 클릭해도 dropdown창이 닫히지 않게 하는 메서드
		$('.dropdown-tag').on('click', function(event){		  
		    event.stopPropagation();
		});		
		
		$('#javaTag').on("click", function () {
			$('#tags').tagsinput('add', 'Java', $(this).css("background-color", 'blue'));
		});

		$('#springTag').on("click", function () {
			$('#tags').tagsinput('add', 'Spring');
		});

		$('#springbootTag').on("click", function () {
			$('#tags').tagsinput('add', 'Spring Boot');
		});

		$('#jdbcTag').on("click", function () {
			$('#tags').tagsinput('add', 'JDBC');
		});

		$('#jstlTag').on("click", function () {
			$('#tags').tagsinput('add', 'JSTL');
		});

		$('#frontendTag').on("click", function () {
			$('#tags').tagsinput('add', 'Front-End');
		});

		$('#backendTag').on("click", function () {
			$('#tags').tagsinput('add', 'Back-End');
		});

		$('#webdevTag').on("click", function () {
			$('#tags').tagsinput('add', '웹 개발');
		});

		$('#appdevTag').on("click", function () {
			$('#tags').tagsinput('add', '앱 개발');
		});

		$('#htmlcssTag').on("click", function () {
			$('#tags').tagsinput('add', 'HTML/CSS');
		});

		$('#javascriptTag').on("click", function () {
			$('#tags').tagsinput('add', 'Javascript');
		});

		$('#jqueryTag').on("click", function () {
			$('#tags').tagsinput('add', 'jQuery');
		});

		$('#jspTag').on("click", function () {
			$('#tags').tagsinput('add', 'JSP');
		});

		$('#bootstrapTag').on("click", function () {
			$('#tags').tagsinput('add', 'Bootstrap');
		});

		$('#pythonTag').on("click", function () {
			$('#tags').tagsinput('add', 'Python');
		});

		$('#djangoTag').on("click", function () {
			$('#tags').tagsinput('add', 'Django');
		});

		$('#flaskTag').on("click", function () {
			$('#tags').tagsinput('add', 'Flask');
		});

		$('#gamedevTag').on("click", function () {
			$('#tags').tagsinput('add', '게임 개발');
		});

		$('#unityTag').on("click", function () {
			$('#tags').tagsinput('add', 'Unity');
		});

		$('#androidTag').on("click", function () {
			$('#tags').tagsinput('add', 'Android');
		});

		$('#iosTag').on("click", function () {
			$('#tags').tagsinput('add', 'iOS');
		});

		$('#swiftTag').on("click", function () {
			$('#tags').tagsinput('add', 'Swift');
		});

		$('#nodejsTag').on("click", function () {
			$('#tags').tagsinput('add', 'Node.js');
		});

		$('#algorythmTag').on("click", function () {
			$('#tags').tagsinput('add', '알고리즘');
		});

		$('#reactTag').on("click", function () {
			$('#tags').tagsinput('add', 'React');
		});

		$('#cloudTag').on("click", function () {
			$('#tags').tagsinput('add', '클라우드');
		});

		$('#linuxTag').on("click", function () {
			$('#tags').tagsinput('add', 'Linux');
		});

		$('#gitTag').on("click", function () {
			$('#tags').tagsinput('add', 'Git');
		});

		$('#infoguardTag').on("click", function () {
			$('#tags').tagsinput('add', '정보보안');
		});

		$('#blockchainTag').on("click", function () {
			$('#tags').tagsinput('add', '블록체인');
		});

		$('#devopsTag').on("click", function () {
			$('#tags').tagsinput('add', 'DevOps');
		});

		$('#hackingTag').on("click", function () {
			$('#tags').tagsinput('add', '해킹');
		});

		$('#databaseTag').on("click", function () {
			$('#tags').tagsinput('add', '데이터베이스');
		});

		$('#aiTag').on("click", function () {
			$('#tags').tagsinput('add', '인공지능');
		});

		$('#sqlTag').on("click", function () {
			$('#tags').tagsinput('add', 'SQL');
		});

		$('#machinerunningTag').on("click", function () {
			$('#tags').tagsinput('add', '머신러닝');
		});

		$('#rTag').on("click", function () {
			$('#tags').tagsinput('add', 'R');
		});

		$('#uiuxTag').on("click", function () {
			$('#tags').tagsinput('add', 'UI/UX');
		});

		$('#3dmodelingTag').on("click", function () {
			$('#tags').tagsinput('add', '3D 모델링');
		});

		$('#aftereffectsTag').on("click", function () {
			$('#tags').tagsinput('add', 'After Effects');
		});

		$('#premiereproTag').on("click", function () {
			$('#tags').tagsinput('add', 'Premiere Pro');
		});

		$('#photoshopTag').on("click", function () {
			$('#tags').tagsinput('add', 'Photoshop');
		});

		$('#illustratorTag').on("click", function () {
			$('#tags').tagsinput('add', 'Illustrator');
		});

		$('#designeditorTag').on("click", function () {
			$('#tags').tagsinput('add', '편집 디자인');
		});

		$('#indesignTag').on("click", function () {
			$('#tags').tagsinput('add', 'InDesign');
		});
