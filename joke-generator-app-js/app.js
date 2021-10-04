document.querySelector('.btn').addEventListener('click', showJokes);
function showJokes(e) {
  const number = document.querySelector('input[type="number"]').value;
  let invalid_input = document.querySelector('.invalid-input');
  if(number > 0) {
    invalid_input.innerHTML = "";
    const xhr = new XMLHttpRequest();
    xhr.open('GET',`https://api.icndb.com/jokes/random/${number}`,true);
    xhr.onload = function() {
      if(this.status === 200) {
        const response = JSON.parse(this.responseText);
        let output = '';
        if(response.type === "success") {
          response.value.forEach(function(item) {
            output += `
            <li>${item.joke}</li>
            `;
          });
        } else {
          output += '<li>Something went wrong!</li>'
        }
        document.querySelector('.jokes').innerHTML = output;
      }
    }
    xhr.send();
  } else {
    invalid_input.innerHTML = "Please enter a number greater than 0";
    invalid_input.style.marginBottom = "10px";
  }
  e.preventDefault();
}
