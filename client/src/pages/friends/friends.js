import './friends.css'
import React, { useState, useEffect, useRef } from "react";
import ReactDOM from "react-dom";
import FriendCal from "./friendCal";
import httpClient from "../../httpClient";
import * as Ai from 'react-icons/ai';



function Friends() {
  const [friends, setFriends] = useState([]);
  const [showAllFriends, setShowAllFriends] = useState(true);
  const [currentUser, setCurrentUser] = useState("");
  const [selectedFriend, setSelectedFriend] = useState([])
  const [friendEmail, setFriendEmail] = useState("")
  const [role, setrole] = useState(localStorage.getItem("role"))
  const [filiere, setFiliere] = useState([]);

  useEffect(() => {
    let localEmail = localStorage.getItem("email");
    let role = localStorage.getItem("role")

    if (role == 'user') {
      fetch("/auth/current_user/" + localEmail)
        .then((response) => response.json())
        .then((data) => {
          setCurrentUser(data);
          if (data.user) {
            fetch(`/filiereByGroupId/${data.user.filieres_group_id}`)
              .then((response) => response.json())
              .then((data) => {
                setFriends(data);
              })
              .catch((error) => {
                console.log(error);
              });
          }
        })
        .catch((error) => {
          console.log(error);
        });
    }
    else {
      httpClient.get("/filiere")
        .then(res => setFiliere(res.data))
        .catch(err => console.log(err))
    }

    return () => {

    };
  }, []);


  /**
   * Updates the selected user
   * @param friend - The selected friend.
   */
  const handleUserClick = (friend) => {
    console.log("=======");
    console.log(friends);
    setSelectedFriend(friend.id_filiere);
    setFriendEmail(friend.id_filiere);
    // setFriendId(friend.friendid);
  }

  /**
   * Shows all friends when section is clicked
   */
  const handleAllFriendsClick = () => {
    setShowAllFriends(true);
  };







  return (
    <div className="wrapper1">
      <div className="fullContainer">
        <div className="sideContainer">
          <div className="friendsHeader">
            <div className="sideHeaders" onClick={handleAllFriendsClick}>
              <h3>tous les infos des filiere</h3>
            </div>

          </div>
          <div className="subSideContainer">

            <div className="allFriendsContainer">
              <div className="scrollWrapper">
                <div className="subScroll">
                  <div className="scrollBoxF">
                    {role == "user" ? (friends.length > 0 ? (
                      friends.map((friend) => (
                        <div
                          className={`friend ${friend.id_filiere === selectedFriend ? 'selected' : ''}`}
                          key={friend.id_filiere}
                          onClick={() => handleUserClick(friend)}
                        >
                          <div className="subFriend">
                            <p> {friend.nomfil}</p>
                            <div className='removeFriend' onClick={() =>
                              handleUserClick(friend)
                            }>
                              <Ai.AiFillCarryOut data-testid="delete-icon" /></div>
                          </div>
                        </div>
                      ))
                    ) : (
                      <div>No filiere</div>
                    )) : ""}
                  </div>
                  <div className="scrollBoxF">
                    {role == "enseignement" ? (filiere.length > 0 ? (
                      filiere.map((friend) => (
                        <div
                          key={friend.id_filiere}
                          onClick={() => handleUserClick(friend)}
                        >
                          <div className="subFriend">
                            <p>{friend.cycle} {friend.nomfil}</p>
                            <div className='removeFriend' onClick={() =>
                              handleUserClick(friend)
                            }>
                              <Ai.AiFillCarryOut data-testid="delete-icon" /></div>
                          </div>
                        </div>
                      ))
                    ) : (
                      <div>No filiere</div>
                    )) : ""}
                  </div>

                </div>
              </div>
            </div>


          </div>
        </div>
        <div className="calendarContainer">
          <FriendCal friend={friendEmail} />
        </div>
      </div>
    </div>
  );
}
export default Friends;


ReactDOM.render(<Friends />, document.getElementById("root"));


