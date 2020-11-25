var now = 0;
var max = 2;
//设置切换的图片
var imgList = new Array();
imgList[0] = "/image/bigpic1.jpg";
imgList[1] = "/image/bigpic2.jpg";

//设置自动循环
setInterval("changeBigPic()", 3000);
function changeBigPic(){
	var str = document.getElementById("bigpic").src;
	for(var i = 0; i < max; i++){
		if(i == now){
			document.getElementById("bigpic").src = imgList[i];
			now = (now + 1) % max;
			break;
		}
	}
}