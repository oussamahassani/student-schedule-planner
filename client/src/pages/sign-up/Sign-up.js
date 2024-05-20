import React, { useState , useEffect } from 'react';
import "./Sign-up.css"
import httpClient from "../../httpClient";
import logo3 from '../../public/logo3.png'
/**
 * Sign_Up component for user registration.
 *
 * @returns {JSX.Element} Returns the JSX element with registration form.
 */
const Sign_Up = ()=> {
  let Listgroups = ["group1","group2"]
  const [filiere, setFiliere] = useState([]);
  /**
   * State to store user's email.
   */
  const [email, setEmail] = useState("");
  useEffect(() => {
    httpClient.get("/filiere")
    .then(res => setFiliere(res.data))
     .catch(err => console.log(err))
    return () => {
      
    }
  }, [])
  const [selectedfiliere, setFiliereSelected] = useState();

  /**
   * State to store user's password.
   */
  const [password, setPassword] = useState("");

  /**
   * State to store user's first name.
   */
  const [fName, setFName] = useState("");

  /**
   * State to store user's last name.
   */
  const [lName, setLName] = useState("");
  const [groups, setGroup] = useState("");

  const [error, setError] =useState("");

  /**
   * Function to handle user registration.
   * Sends the user's details to the server for registration.
   * If the registration is successful, redirects the user to home page.
   *
   * @returns {void}
   */
  const registerUser = async () => {
    try {
      const resp = await httpClient.post("/auth/register", {
        email,
        password,
        password_confirmation:password,
        name:fName,
        lName,
        groups,
        id_filiere:selectedfiliere
      });


      window.location.href = "/login";
    } catch (err) {
      setError(err.response.data.error);
    }
  };

  return (
    <div className="initialWrapper">
      <div className="initialForm">
        <img className="logo" src={logo3}/>
        <div className="initialText">
          <h2>Sign up</h2>
          {error && <div className="error">{error}</div>}
          <form>
            <div>
              <p className="initialP">Email</p>
              <input
                type="email"
                value={email}
                className='form-control'
                required
                onChange={(e) => setEmail(e.target.value)}
                id=""
              />
            </div>
            <div>
              <p className="initialP">Password</p>
              <input
                type="password"
                value={password}
                className='form-control'
                required
                onChange={(e) => setPassword(e.target.value)}
                id=""
              />
            </div>
            <div>
              <p className="initialP">First Name</p>
              <input
                type="text"
                value={fName}
                className='form-control'
                required
                onChange={(e) => setFName(e.target.value)}
                id=""
              />
            </div>
            <div>
              <p className="initialP">Last Name</p>
              <input
                type="text"
                value={lName}
                className='form-control'
                required
                onChange={(e) => setLName(e.target.value)}
                id=""
              />
            </div>
            <div>
              <p className="initialP">Classe</p>
              <select
                value={selectedfiliere}
                className='form-control'
                required
                onChange={(e) => setFiliereSelected(e.target.value)}
                id=""
              >
                <option>selectioner votre class</option>
                {filiere.map((el,index) => {return(<option key={index} value={el.id_filiere}>{el.cycle +"-"+ el.nomfil}</option>)}
  )}
                </select>
            </div>
            <div>
              <p className="initialP">groups</p>
              <select
                value={groups}
                className='form-control'
                required
                onChange={(e) => setGroup(e.target.value)}
                id=""
              >
                <option>selectioner votre group</option>
                {Listgroups.map((el,index) => {return(<option key={index} value={el}>{el}</option>)}
  )}
                </select>
            </div>
            <button className="initialButton" type="button" onClick={() => registerUser()}>
              Submit
            </button>
          </form>
        </div>
      </div>
    </div>
  );
};

export default Sign_Up;