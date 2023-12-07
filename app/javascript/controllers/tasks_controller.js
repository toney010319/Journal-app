import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    initialize () { 
        // console.log("hellow world initialzied")
    }
  connect() {
    // console.log("Hello World!")
  }
  toggleForm(event){
    console.log('I clicked the edit button')
    event.preventDefault()
    event.stopPropagation()
    const formId = event.params["form"];
    console.log(formId)
    const taskBodyId = event.params['body'];
    console.log(taskBodyId)
    const form = document.getElementById(formId);
    form.classList.toggle("d-none");
   
    const taskBody = document.getElementById(taskBodyId);
    console.log(taskBody)
    taskBody.classList.toggle("d-none");
  }
}
