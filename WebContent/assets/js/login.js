
console.log(window.location.search)

let queryString = location.search;

let urlParams = new URLSearchParams(queryString);

let login = urlParams.get('login');

if(login == 'fail'){
	alert('일치하는 회원정보가 읎다~~~')
}