import swal from 'sweetalert';
const applySweetalert = () => {


const initSweetalert = (selector, options = {}, callback = () => {}) => {
    const swalButtons = document.querySelectorAll(selector);
    if (swalButtons) { // protect other pages
      swalButtons.forEach((swalButton) => {
        swalButton.addEventListener('click', () => {
          swal(options).then(callback); // <-- add the `.then(callback)`
        });
      });
    };
  };

  const deleteButtons = document.querySelectorAll(".sweet-delete");
  deleteButtons.forEach((button) =>{
    let index = button.dataset.index
    initSweetalert(`#cbtn-${index}`, {
    title: "Are you sure?",
    text: "This action cannot be reversed",
    icon: "warning"
  }, (value) => {
    console.log(value)
    if (value) {
      const link = document.querySelector(`#delete-${index}`);
      link.click();
    };
  });
  })

}
export { applySweetalert };
