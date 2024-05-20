import React, { useState, useEffect } from "react";
import {Routes, Route } from "react-router-dom"
import "./App.css";
import AppCal from "./pages/calendar/AppCal";
import AppExamCal from "./pages/examCalander/AppCal";

import Navbar from "./Navbar";
import Notif from "./pages/Notifications/Notif";
import Login from "./pages/login/Login";
import SignUp from "./pages/sign-up/Sign-up";
import AppFriends from "./pages/friends/AppFriends";
import httpClient from "./httpClient";
import { ToastContainer, toast } from "react-toastify";
import 'react-toastify/dist/ReactToastify.css';
import AppCourse from "./pages/Courses/AppCourse";
import AppAccount from "./pages/account/AppAccount";
import AppPassword from "./pages/account/AppPassword";
import AppProfilePic from "./pages/account/AppProfilePic";
import AppDelete from "./pages/account/AppDelete";
import ExamCalByEnsigenement from './pages/ExamCalByEnsigenement/AppExamByEnsei'
// import type {User} from "./types";


function App() {
   let localEmail = localStorage.getItem("email")

    const [user, setUser] = useState(null);


    useEffect(() => {
        (async () => {
            try {
                const resp = await httpClient.get("auth/current_user/"+localEmail);
                setUser(resp.data);
            } catch (error) {
                console.log("Not authenticated");
            }
        })();
        }, [setUser,localEmail]);

   


    return (

        <div>
            {/*<NavMain />*/}
            <ToastContainer />
      
            <div className="App">
               

                <Routes>
                    <Route path="/" element={<Navbar />} />
                    <Route path= "/account" element={<AppAccount />} />
                    <Route path= "/ChangePassword" element={<AppPassword />} />
                    <Route path="/UploadProfilePic" element={<AppProfilePic />} />
                    <Route path= "/DeleteAccount" element={<AppDelete />} />
                    <Route path="/calendar" element={<AppCal />} />
                    <Route path="/examcalendar" element={<AppExamCal />} />
                    <Route path="/exambyEnseignement" element={<ExamCalByEnsigenement />} />
                    
                    <Route path="/courses" element={<AppCourse />} />
                    <Route path= "/Notifications" element={<Notif />} />
                    <Route path="/Friends" element={<AppFriends />} />
                <Route path="/sign-up" element={<SignUp/>}></Route>
         
                <Route path="/login" element={<Login />} />
                
            </Routes>
            </div>
   
        </div>
    );
}

export default App;
