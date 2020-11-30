var now = 0;
var max = 2;
//设置切换的图片
var imgList = new Array();
imgList[0] = "/static/image/main/bigpic1.jpg";
imgList[1] = "/static/image/main/bigpic2.jpg";

//设置自动循环
setInterval("changeBigPic()", 3000);
function changeBigPic(){
	var str = document.getElementById("bigpic").src;
	var href = document.getElementById("bigpichref");
	for(var i = 0; i < max; i++){
		if(i == now){
			document.getElementById("bigpic").src = imgList[i];
			now = (now + 1) % max;
			var index = 21;
			if(i == 0){
				index = 21;
			}
			if(i == 1){
				index = 22;
			}
			var hrefPath = "getoneproduct.do?pid=" + index;
			href.setAttribute('href', hrefPath);
			break;
		}
	}
}