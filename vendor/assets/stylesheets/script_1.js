var myFunction = function () {
  // creating a new element, and assigning text to it.
  var fourthListItem = document.createElement("li");
  fourthListItem.innerHTML = "Fourth";

  var unorderedList = document.getElementsByTagName("ul")[0];

  unorderedList.appendChild(fourthListItem);
};

setInterval(myFunction, 5000);


