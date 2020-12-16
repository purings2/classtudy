// 현재 path 경로 저장
var path = document.getElementById("nowPath").value;

//---------------------------------------------------------------------
// 모든 회원가입 내역을 승인
//---------------------------------------------------------------------
function registerCheckAll() {
	if(confirm("모두 승인 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/admin/registerCheckAll";
	}
}

//---------------------------------------------------------------------
// 선택한 회원가입 내역을 승인
//---------------------------------------------------------------------
function registerCheck(listNo) {
	$.ajax({
		url: 	"/admin/registerCheck/" + listNo,
		type: 	"post",
		dataType: "json",
		data: 	{"listNo" : listNo},
		success: function(data) {
			if(data == 1) { //승인 후 확인 표시
				document.getElementById("confirmBtn" + listNo).innerHTML
					= '<i class="glyphicon glyphicon-ok"></i>';
			}
		}
	});
}