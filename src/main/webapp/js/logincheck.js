/**
 * 
 */
function LoginCheck(){
	if (loginform.username.value == ""){
		alert("请填写用户名！");
		loginform.name.focus();
		return false;
    }
    if (loginform.password.value.length < 6 || loginform.password.value.length > 18){
		alert("密码必须在6-18个字符之间！");
		loginform.password.focus();
		return false;
    }
}