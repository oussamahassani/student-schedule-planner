/**
 * Account Component that displays user information and allows logout functionality.
 * @returns {JSX.Element} Account Component
 */
import "./Account.css";
import React, {useEffect, useState} from "react";
import {Link } from "react-router-dom";
import httpClient from "../../httpClient";
const Account = () =>{

    const [user, setUser] = useState(null);
    const [profilePicURL, setProfilePicURL] = useState("");

    const [role, setrole] =useState(localStorage.getItem("role"));



     /**
     * Fetches user data from backend and sets it to state.
     * @function useEffect
     * @param {function} setUser - Function to set user state
     */
    useEffect(() => {
    (async () => {
        try {
            let localEmail = localStorage.getItem("email")
       if(role == "user"){
        const resp = await httpClient.get("/auth/current_user/"+localEmail);
        if(resp.data){
            setUser(resp.data.user);
        
        }
    }
    else {
        const resp = await httpClient.get("/byenseignant/"+localEmail);
        setUser(resp.data);
    }
        } catch (error) {
            console.log("Error");
        }
    })();
    }, [setUser]);

    /**
     * Logs out user and redirects to home page.
     * @function logoutUser
     * @returns {Promise<void>}
     */
    const logoutUser = async () => {
        localStorage.clear()
        window.location.href = "/";
    };






    return(
        <div className="account-wrapper">
            <div className="sub-account">
                {user ? (
                    <>
                        {profilePicURL && (
                          <Link to={"/UploadProfilePic"}>
                              <div className='image-container'>
                                <img className='profilePic' src={profilePicURL} alt="Profile picture" />
                                <div className="overlay">
                                  <span>+</span>
                                </div>
                              </div>
                          </Link>
                        )}

                        <h3>{user.name}</h3>
                        <h5>{user.email}</h5>
                       
                        <button onClick={logoutUser} className="accountBtnL" >Logout</button><br/>
                    </>
                ) : (
                    <p>Loading user data...</p>
                )}
            </div>
        </div>
    )


}
export default Account