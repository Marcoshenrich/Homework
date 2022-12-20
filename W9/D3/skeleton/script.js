document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  const resForm = document.getElementsByClassName('favorite-submit');

  resForm.addEventListener('submit', event => {
    event.preventDefault();

    // Get the name input element, get the value, and clear it.
    const resNameInput = document.getElementsByClassName('favorite-input')
    const resName = resNameInput.value;
    resNameInput.value = '';

    // Add a new li with the sheep's name to the sheep ul.
    const ul = document.getElementById('restaurants');
    const li = document.createElement('li');
    li.textContent = resName;
    ul.appendChild(li);

  });



  // adding SF places as list items

  // --- your code here!



  // adding new photos

  // --- your code here!



});
