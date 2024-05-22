import "./ExamSearch.css";
import React, {useState, useEffect} from "react";
import Calendar from './Calendar'

function EnseignementSearch() {
  const [searchTerm, setSearchTerm] = useState("");
  const [data, setData] = useState([]);
  const [selectedCourse, setSelectedCourse] = useState(null);
  const [addedCourses, setAddedCourses] = useState([]);
  const [codeenseignant, setcodeenseignant] = useState(null);

  
useEffect(() => {
  fetch("/enseignant")
    .then((response) => response.json())
    .then((data) => {
      setData(data);
      console.log(data);
    })
    .catch((error) => console.log(error)); // Add this line to catch errors
}, []);

    /**
     * This usEffect hook will run when the addedCourses state changes
     */
    useEffect(() => {
      let userEmail = localStorage.getItem("email")


      fetch(`/auth/current_user/${userEmail}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to fetch added courses");
          }
          return response.json();
        })
        .then((addedCoursesData) => {
          setAddedCourses(addedCoursesData);
        })
        .catch((error) => console.log(error));
      console.log("Fetched user classes");
      console.log(addedCourses);
  
   
}, []);

/**
 * Handle a click on a course, setting the selected course state.
 * @param {Object} course - The course object that was clicked.
 */
  function handleCourseClick(course) {
    setSelectedCourse(course);
    setcodeenseignant(course.codeenseignant)
  }



 function renderCourseDetails() {
  console.log(selectedCourse)
  console.log(codeenseignant)

  if (!selectedCourse) {
    return null;
  }
  if(searchTerm == "" || !searchTerm )
  {
    return null;
  }
return <Calendar nameMatiere={codeenseignant}/>
 }



  return (
    <div className="course-wrapper">
       <h1>Liste des surveillance  par enseignement</h1>
      <div className="CourseSearch">
        <div className="searchContainer">
          <div className="searchInputs">
            <input
              type="text"
              placeholder="Search..."
              onChange={(event) => {
                setSearchTerm(event.target.value);
              }}
            />
          </div>
          <div className="dataResult">
          {data
              .filter((val) => {
                if (searchTerm === "") {
                  return val; }
        else {
      const classRepresentation = `${val.nom} ${val.prenoms}:  ${val.codeenseignant}`.toLowerCase();
      return classRepresentation.includes(searchTerm.toLowerCase());
    }
              })
                //this is where the search bar is displaying the filtered courses
              .map((val, key) => {
                return (
                  <div
                    data-testid="course"
                    key={key}
                    onClick={() => handleCourseClick(val)}
                  >
                   <p>{val.codeenseignant}: {val.nom} {val.prenoms} {val.specialite}</p>
                  </div>
                );
              })}
            </div>
        </div>
      {renderCourseDetails()}
      </div>
    </div>
  );
}

export default EnseignementSearch;

