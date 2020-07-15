const friendRequests = () => {
  const adds = document.querySelectorAll(".add-friend")

  // test query Selector
  // console.log(add_button);
  adds.forEach((add) => {
    add.addEventListener('click', (event) => {
      // changing status
      event.currentTarget.innerText = "new status";
      // to disable the button once it has been clicked once
      event.currentTarget.disabled = true;
      // or event.currentTarget.setAttribute("disabled", "");
    });
  });

};


// export {friendRequests};
