$(document).ready(function(){
	var userChoice;

	$( '.imgpaper' ).click(function() {
		userChoice = "paper"
		$('.imgpaper').toggleClass('choiceselected')
		$('.imgscissor').removeClass('choiceselected')
		$('.imgrock').removeClass('choiceselected')

	})

	$( '.imgscissor' ).click(function() {
		$('.imgscissor').toggleClass('choiceselected')
		$('.imgpaper').removeClass('choiceselected')
		$('.imgrock').removeClass('choiceselected')
		userChoice = "scissors"
	})

	$( '.imgrock' ).click(function() {
		$('.imgrock').toggleClass('choiceselected')
		$('.imgpaper').removeClass('choiceselected')
		$('.imgscissor').removeClass('choiceselected')
		userChoice = "rock"
	})

	console.log(userChoice)

	$( '.start' ).click(function() {

		var computerChoice = Math.random();
		if (computerChoice < 0.34) {
			computerChoice = "rock";
			$('#computerC').attr('src','/assets/rock.jpg')
		} else if(computerChoice <= 0.67) {
			computerChoice = "paper";
			$('#computerC').attr('src','/assets/paper.jpg')
		} else {
			computerChoice = "scissors";
			$('#computerC').attr('src','/assets/scissor.jpg')
		}

		window.setTimeout(function(){	
			if (userChoice === computerChoice) {
				window.alert("The result is a tie!")}
			else if (userChoice === "rock"){
				if (computerChoice === "scissors"){
					window.alert("You Win!")}
				else {window.alert("You Lose!")}
			}
			else if (userChoice === "paper"){
				if (computerChoice === "rock"){
					window.alert( "You Win!")}
				else {window.alert( "You Lose!")}
			}
			else if (userChoice === "scissors"){
				if (computerChoice === "rock"){
					window.alert( "You Lose!")}
				else {window.alert( "You Win!")}
			};
			$('#computerC').attr('src','/assets/ironman.jpg')
		},20)
	})
})