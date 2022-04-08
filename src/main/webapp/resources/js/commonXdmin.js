checkUploadedTotalFileNumber = function(totalSize, seq) {
	if(totalSize > MAX_TOTAL_FILE_NUMBER){
		alert("전체 파일 갯수는 5개까지 허용됩니다.");
		$("#file" + seq).val("");
		return flase;
	}
}

checkUploadedImageExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayImage.indexOf(ext) == -1){
		alert("허용된 확장자가 아닙니다.");
		$("#file" + seq).val("");
		return flase;
	}
}


checkUploadedAllExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayAll.indexOf(ext) == -1){
		alert("허용된 확장자가 아닙니다.");
		$("#file" + seq).val("");
		return flase;
	}
}

checkUploadedEachFileSize = function(obj, seq) {
	if(obj.size > MAX_EACH_FILE_SIZE){
		alert("각 첨부 파일 사이즈는 1MB 이내로 등록 가능합니다.");
		$("#file" + seq).val("");
		return flase;
	}
}

checkUploadedTotalFileSize = function(totalSize, seq) {
	if(totalSize > MAX_TOTAL_FILE_SIZE){
		alert("전체 용량은 10MB를 넘을 수 없습니다.");
		$("#file" + seq).val("");
		return flase;
	}
}

