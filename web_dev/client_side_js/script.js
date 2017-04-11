console.log("Testing testing 1 2 3");

function headingChanger(){
  console.log("Heading Changer!");
  event.target.style.fontStyle="italic";
}

function headingRestore(){
  console.log("Heading Restore!");
  event.target.style.fontStyle="initial";
}

function backgroundChanger(){
  console.log("backgound changer");
  event.target.style.backgroundColor="yellow";
}

function backgroundRestore(){
  console.log("backgound restore");
  event.target.style.backgroundColor="white";
}

var heading = document.querySelector("h1");
heading.addEventListener("mouseover", headingChanger);
heading.addEventListener("mouseout", headingRestore);

var about = document.querySelector('div#About');
about.addEventListener("dblclick", backgroundChanger);