window.SpeechRecognition=window.SpeechRecognition || window.webkitSpeechRecognition;

//You have to generate the local server for this purpose
//This will convert each and every word spoken by you in the letter

const recognition=new SpeechRecognition();
recognition.interimResults=true;

let p=document.createElement('p');
const word=document.querySelector('.word');

word.appendChild(p);
recognition.addEventListener('result',e=>{
  //  console.log(e.results);
  const transcript=Array.from(e.results)
  .map(result=>result[0])
  .map(result=>result.transcript)
  .join('');
  //console.log(transcript);
  p.innerHTML=transcript;

  if (e.results[0].isFinal) {
    p = document.createElement('p');
    word.appendChild(p);
  }
});
recognition.addEventListener('end', recognition.start);
recognition.start();