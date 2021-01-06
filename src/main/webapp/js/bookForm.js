
var myForm = document.getElementById("myForm");
var isbn = document.getElementById("isbn");

window.onload = function() {
	myForm.onsubmit = validateBookRegistrationForm;
}

function validateBookRegistrationForm(event) {
	event.preventDefault();

	var validationResult = validateIsbnInput();
	if (validationResult) {
		myForm.submit();
	}
}

function validateIsbnInput() {
	if (isbn.value === "") {
		alert("invalid data");
		return false;
	}
	return true;
}
