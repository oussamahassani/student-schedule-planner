/**
 * Component for logging in a user with email and password.
 * Uses httpClient to send a POST request to the login endpoint.
 * @returns {JSX.Element} Login form.
 */
import React, { useState } from "react";
import "./Login.css";
import httpClient from "../../httpClient";
import logo3 from "../../public/logo3.png";

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

    const [selectedOption, setSelectedOption] = useState('user');
  
    const handleOptionChange = (e) => {
      setSelectedOption(e.target.value);
    };
  

  /**
   * Sends a POST request to the login endpoint with email and password.
   * Redirects user to homepage if login is successful.
   * Displays an alert if login is unsuccessful.
   * @returns {void}
   */
  const logInUser = async () => {
    console.log(email, password);

    try {
      const resp = await httpClient.post("/auth/login", {
        email,
        password,
        user_type:selectedOption,
      });

      console.log(resp.data)
      if (resp.data && resp.data.user)  {
        let localEmail = localStorage.setItem("email",resp.data.user.email)
        let roleName = localStorage.setItem("role",resp.data.role);
          let groups = localStorage.setItem("groups",resp.data.user.groups);

        

        window.location.href = "/calendar";
      }
      else {
        alert("mot de passe ou user incorrect")
      }

    } catch (err) {
      setError(err.response.data.error);
    }
  };

  return (
    <div className="initialWrapper">
      <div className="initialForm">
        <img className="logo" src={logo3} />
        <div className="initialText">
          <h2>Login</h2>
          <form>
            <div>
              {error && <div className="error">{error}</div>}
              <p className="initialP">Email</p>
              <input
                type="text"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                id=""
              />
            </div>
      
             
    <div >
      <p>
        <input
          type="radio"
          value="enseignement"
          checked={selectedOption === 'enseignement'}
          onChange={handleOptionChange}
          className="with-auto"
        />
        Enseignant
      </p>
      </div>
      <p>
        <input
          type="radio"
          value="user"
          className="with-auto"
          checked={selectedOption === 'user'}
          onChange={handleOptionChange}
        />
        User
      </p>
  



            
      
            <div>
              <p className="initialP">Password</p>
              <input
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                id=""
              />
            </div>
            <button className="initialButton" type="button" onClick={() => logInUser()}>
              Submit
            </button>
          </form>
          <p>Vous n'avez pas de compte : <a href="/sign-up">Cliquer ici</a></p>
        </div>
        
      </div>
    </div>
  );
};

export default Login;

