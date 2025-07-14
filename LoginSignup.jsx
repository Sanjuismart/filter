import React from 'react'


const LoginSignup = () => {
  return (
   <div className='container'>
  
  <h2>Login Form</h2>
  <form id="loginForm">
    <input type="name" id="loginEmail" placeholder="Name" required /> 
    <input type="last name" id="loginEmail" placeholder="Last Name" required />
    <input type="phone number" id="loginEmail" placeholder="Phone Number" required />
    <input type="email" id="loginEmail" placeholder="Email" required />
    <input type="password" id="loginPassword" placeholder="Password" required />
    <div id="loginError" class="error"></div>
    <button type="submit">Login</button>
  </form>
  <h2>Signup Form</h2>
  <form id="loginForm">
    <input type="name" id="loginEmail" placeholder="Name" required /> 
    <input type="last name" id="loginEmail" placeholder="Last Name" required />
    <input type="phone number" id="loginEmail" placeholder="Phone Number" required />
    <input type="email" id="loginEmail" placeholder="Email" required />
    <input type="password" id="loginPassword" placeholder="Password" required />
    <div id="loginError" class="error"></div>
    <button type="submit">Login</button>
  </form>
  
  

</div>

    
  )
   
}
// const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
//     const passwordRegex = /^[a-zA-Z0-9]{12}$/;

//     document.getElementById('signupForm').addEventListener('submit', function (e) {
//       e.preventDefault();
//       const email = document.getElementById('signupEmail').value;
//       const password = document.getElementById('signupPassword').value;
//       const error = document.getElementById('signupError');
      
//       if (!emailRegex.test(email)) {
//         error.textContent = "Invalid email address.";
//       } else if (!passwordRegex.test(password)) {
//         error.textContent = "Password must be 12 alphanumeric characters.";
//       } else {
//         error.textContent = "";
//         alert("Signup successful!");
        
//       }
//     });

//     document.getElementById('loginForm').addEventListener('submit', function (e) {
//       e.preventDefault();
//       const email = document.getElementById('loginEmail').value;
//       const password = document.getElementById('loginPassword').value;
//       const error = document.getElementById('loginError');

//       if (!emailRegex.test(email)) {
//         error.textContent = "Invalid email address.";
//       } else if (!passwordRegex.test(password)) {
//         error.textContent = "Invalid password format.";
//       } else {
//         error.textContent = "";
//         alert("Login successful!");
//              }
//     });

export default LoginSignup


