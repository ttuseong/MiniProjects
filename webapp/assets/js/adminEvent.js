var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
$(".eventInsertBtn").on("click", function(){	
	var form = $(".eventForm");
	
	var formData = new FormData(form[0]);
	
	$.ajax({		
		url : url+"/admin/eventInsert",			
		type: "post",
		enctype: 'multipart/form-data',
		processData:false,
       	contentType : false,
		data : formData,
		dataType : "json",
		success : function(result){
			addEvent(result);
		},	
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}	
	}); 
});

function addEvent(vo){
	var str = "";
	
	str += '<tr>';
	str += '	<td>'+ vo.eventNo +'</td>';
	str += '	<td>'+ vo.eventName +'</td>';
	str += '	<td>'+ vo.eventLink +'</td>';
	str += '	<td><img alt="" src="' + url+'/upload/' + vo.saveName + '"></td>';
	str += '	<td><i class="fas fa-trash-alt deleteBtn"></i></td>';
	str += '</tr>';
	
	$("tbody").prepend(str);	
	
}

$("tbody").on("click", ".deleteBtn", function(){
	var thisTarget = $(this);
	
	var formData = { eventNo : $(this).parent().prev().prev().prev().prev().text() }
	
	$.ajax({		
		url : url+"/admin/eventDelete",			
		type: "post",
       	contentType : "application/json",
		data : JSON.stringify(formData),
		dataType : "json",
		success : function(result){
			if(result == 1){
				thisTarget.parent().parent().remove();
			} 	
		},	
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}	
	});
});