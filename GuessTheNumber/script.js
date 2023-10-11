"use strict";

let secretNumber = Math.trunc(Math.random() * 10) + 1;
let score = 10;
let highScore = 0;

// AGAIN - przycisk do resetowania stanu gry
document.querySelector(".again").addEventListener("click", function () {
  score = 10;
  secretNumber = Math.trunc(Math.random() * 10) + 1;
  document.querySelector(".secretNumber").textContent = "???";
  document.querySelector(".mess").textContent = "Choose your guess!";
  document.querySelector(".val").textContent = score;
  document.querySelector(".choose").value = "";
  document.querySelector("body").style.backgroundColor = "#222";
  document.querySelector(".secretNumber").style.width = "10rem";
  document.querySelector(".secretNumber").style.fontSize = "3rem";
});

// CHECK -- przycisk do sprawdzenia gry/ropoczęcia
document.querySelector(".check").addEventListener("click", function () {
  let choose = Number(document.querySelector(".choose").value);

  console.log(choose);

  if (!choose) {
    //
    document.querySelector(".mess").textContent = "No Number!";
    console.log("Wybierz swoją liczbę");
    //
  } else if (choose !== secretNumber) {
    //
    if (score > 1) {
      document.querySelector(".mess").textContent =
        choose > secretNumber ? "To high!" : "To low!";
      score--;
      document.querySelector(".val").textContent = score;
    } else {
      document.querySelector(".mess").textContent = "You Lost the game!";
      document.querySelector(".val").textContent = 0;
    }
    //
  } else if (choose === secretNumber) {
    document.querySelector("body").style.backgroundColor = "#83a300";
    document.querySelector(".secretNumber").style.width = "15rem";
    document.querySelector(".secretNumber").textContent = secretNumber;
    document.querySelector(".secretNumber").style.fontSize = "8rem";
    document.querySelector(".mess").textContent = "You WON!";

    if (score > highScore) {
      highScore = score;
      document.querySelector(".hs").textContent = highScore;
    }
  }
});
