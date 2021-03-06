var infos;
var check = false;
getCommentList();


function getCommentList() {
	$.ajax({
		url : contextPath + "/worry/WorryCommentListOK.bo",
		type : "get",
		dataType : "json",
		data : {"worryNumber" : worryNumber},
		success : showmyCommentList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
		
	});
};


function showmyCommentList(infos) {
	var text = "";
	if (infos != null && infos.length != 0) {
		$ .each( infos, function(index, info) {
				    text +='<div class="story-comments">'
					text +='<div class="Comment__CommentWrapper-sc-1u7skh9-2 eYUUGp">'
				    text +='		<div class="header">'
				    text +='<input type="hidden" class="worryNumber" name="worryNumber" value="'+ info.worryNumber +'"> '
					text +='		<div class="profile">'
					text +='			<img class="Comment__BeanImg-sc-1u7skh9-1 bPfWFW"'
					text +='				src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAGKADAAQAAAABAAAAGAAAAADiNXWtAAADoElEQVRIDd1VXUiTURh+v7nNuc2shEHmYBgqGVIm/WgkOSOmgllECEZBP1LRnRahBFJ4Zd1EdGF6kdSFSHRhKGJJUFlWCpXLldbCCHHmtLTNberXc8787Di+Sd124Oz9Oc/7vO/OOe/5JFocsixLoY/ekzBPkEybuFsiJ2STLm1toyRJ8iL0n4TE0PKXX+tCgdk7skx2tWhJom5drOGIZDONqq2v5NPwylcgZ8EscbgAmRe0EmHkmoZtS7TKGfj95w88hicJbyEVFRVtiSSKZkvBDxMvELxDDfByoJ/qGq/R/vwi8vl95P0xOdE3+OYGzuMCZl57e/trtTjRJwVdE9M4PbPoZHogGKDTdZWMlC+tWbWazHGm+a9j32IWsW4k2djR0RFYtFWFRtULZ/vTh5y86ug5itXH0nrLOjp7+DgnA/FtQGw4vxPR4hW/hsJXUbGXZGfPI8pMzaDdW3Oo4uBRGhgepMu3ruoBGDWbzWeQ5AH0i7W1tdqlIBWF/YOmSP/bISeNfh+jfTvz+dLenXt4Mv+sXwviK62trX7Im1i09vb25kXGi7Ym3ETULTqf9D8noyGOcjZvW3IfKCjugzFrtVobmdNkMrGYH5ilzI42NKhE5k2EZlJALvcQpSTbSKfVcRdrtEAwVAZssKGhIVRcXJwyMzNTA3sW53CqsLDwq8Ph+IzZonAoku8f61AA9ypPxdiEZ3vGhvQ5EPcDyJ+K/HSHDAI9yO4uLCyUaTBsNhslJSVRfHx8ssvlIrfbnagQryhB4sO8LoIqKip0SOBH9XJzc7Ps9XpR05/R2dnJCpBLS0ttYly0G+BBaKoIHBkZqYRtqK6uptzcXHGJ64mJ4eLn5uYscHxRANH64BUAm5CEvz0lJSVJ2O9LdrtdlZyRabXhWufn55dxLjOUrJDssKzYJn5DgsFgIZIZy8vLBchydXIy3PFINC2uqCbAG3MPFb9jVSNJLOQui8XCD1QMFnWn00nA/czOzh4U/aoJAGQflxpUnYX5AHO10WgU45bp4+Pj1NXVxXz30dkL4qJqAgbAI9aGROcx7ZgFHo+HfD6fGMt15mcHj22c1ul01ZEA5WWM9HN7eHi4Jy0t7TGMzFAoZAWZlJWVRXq9nmATribV19cT/OMxMTGOtrY2Fw8UfvgtEeyoKs6iCltVbzAYKCEhgaampigQCLB9f4agY/jHn9SC/zoBC8aXLA9JDkFlb8hP3JgWVM26/T8evwHAKHX0uiXr4AAAAABJRU5ErkJggg==">'
					text +='			<div class="profile-img"></div>'
					text +='			<div class="nickname clickable">'+ info.userNickName +'</div>'
					text +='		</div>'
					text +='		<div class="info">'
					text +='			<div class="from-now">'
					text +='				<svg stroke="currentColor" fill="currentColor"'
					text +='					stroke-width="0" viewBox="0 0 512 512" height="1em"'
					text +='					width="1em" xmlns="http://www.w3.org/2000/svg">'
                    text +='        <path'
					text +='						d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 '
                    text +='        0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path>'
                    text +='    </svg>' + info.worryCommentDate + '</div>'
					text +='		</div>'
					text +='	</div>'
					text +='	<div class="contents ">'
					text +='		<div class="comment">'+ info.worryCommentContent +'</div>'
					text +='	</div>'
					text +='	<div class="bot">'
					text +='	</div>'
					text +='	</div>'
					text +='	</div>'
						});
	}
	$("#wrap_worryComment").html(text);
}

    
  function send(){
	  $.ajax({
			url : contextPath + "/worry/WorryCommentWriteOK.bo",
			type : "post",
			data : {"worryNumber" : worryNumber, "contents" : $('#commentWrite_textarea').val()},
			success : function(){
				getCommentList();
			},
			error : function(a, b, c) {
				console.log("오류" + c);
			}
		});
  }

  // 수정/삭제 버튼 보이기 
    var check = false;
    $.each($more, function(index, item){
            $(item).click(function(){
                if(check == false){
                    $list.css("display", "block");
                    check = true;
                }else{
                    $list.css("display", "none");
                    check = false;
                };
            });
        });
    
  
  //카테고리 넘버로 이름 받아오기
    const $category = $('.category');
    $.each($category, function(index, item){
    		if($(item).text() == 1) {
       		$(item).text("일반 고민");
   			}
    		if($(item).text() == 2) {
       		$(item).text("취업 진로");
    		}
    		if($(item).text() == 3) {
       		$(item).text("직장");
    		}
    		if($(item).text() == 4) {
       		$(item).text("연애");
   			}
    		if($(item).text() == 5) {
       		$(item).text("성추행");
    		}
    		if($(item).text() == 6) {
       		$(item).text("결혼/육아");
    		}
    		if($(item).text() == 7) {
       		$(item).text("대인관계");
   			}
    		if($(item).text() == 8) {
       		$(item).text("외모");
    		}
    		if($(item).text() == 9) {
       		$(item).text("가족");
    		}
    		if($(item).text() == 10) {
       		$(item).text("학업/고시");
   			}
    		if($(item).text() == 11) {
       		$(item).text("금전/사업");
    		}
    		if($(item).text() == 12) {
       		$(item).text("성생활");
    		}
    		if($(item).text() == 13) {
       		$(item).text("이별/이혼");
   			}
    		if($(item).text() == 14) {
       		$(item).text("중독/집착");
    		}
    		if($(item).text() == 15) {
       		$(item).text("투병/신체");
    		}
    		if($(item).text() == 16) {
       		$(item).text("정신건강");
   			}
    		if($(item).text() == 17) {
       		$(item).text("LGBT");
    		}
    		if($(item).text() == 18) {
       		$(item).text("자아/성격");
    		}
    		if($(item).text() == 19) {
       		$(item).text("따돌림");
   			}
    		if($(item).text() == 20) {
       		$(item).text("응원");
    		}
    		if($(item).text() == 21) {
       		$(item).text("자유");
    		}
 		}); 


    