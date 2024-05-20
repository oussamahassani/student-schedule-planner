import './styles.css'
import React, { Component   } from "react"
import { Link } from "react-router-dom";
import { renderToString } from 'react-dom/server';
import * as Cg from 'react-icons/cg';
import generatePDF from 'react-to-pdf';

const daysOfWeek = ['1', '2', '3', '4', '5', '6', '7'];
/**
 * @return the user's calendar with their events
 */
class Calendar extends Component {

localEmail = localStorage.getItem("email")
role = localStorage.getItem("role")
    constructor(props) {
        super(props);
        this.componentRef = React.createRef();

        this.state = { events: [], selectedEvent: null, descBox: null , recherche:null,SavedData:[] };
    }

    /**
     * Displays user's courses on the calendar
    */
    addEventsToCalendar = () => {
        if(this.role =="user"){
        fetch("/auth/current_user/"+this.localEmail)
            .then((response) => {
                if (!response.ok) {
                    throw new Error("User identity error");
                }
                return response.json();
            })
            .then((data) => {
                const userEmail = data.user.id_filiere;
                fetch(`/exam/byStudent/${userEmail}`)
                    .then((response) => {
                        if (!response.ok) {
                            throw new Error(`Unable to get  for ${userEmail}`);
                        }
                        return response.json();
                    })
                    .then((classes) => {
                        const updatedEvents = [...this.state.events];
                        classes.forEach((c) => {
                            const classNum = c.salle;
                            const subject = c.module;
                          //  const description = c.enseignant;
                            const day = c.jour;
                            const startTime = c.hdebut;
                            const endTime = c.hfin;
                           // const type = c.type;
                            const events = this.state.events.slice();
                            updatedEvents.push({ day, startTime, endTime, classNum, subject });
                            this.setState({ events });
                           
                        });
                        this.setState({ events: updatedEvents });
                        this.setState({SavedData:updatedEvents})
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            });
        } else {
            fetch("/byenseignant/"+this.localEmail)
            .then((response) => {
                if (!response.ok) {
                    throw new Error("User identity error");
                }
                return response.json();
            })
            .then((data) => {
                console.log(data,data.codeenseignant)
                const codeenseignant = data.codeenseignant;
                fetch(`/exam/byensignent/${codeenseignant}`)
                    .then((response) => {
                        if (!response.ok) {
                            throw new Error(`Unable to get for ${codeenseignant}`);
                        }
                        return response.json();
                    })
                    .then((classes) => {
                        const updatedEvents = [...this.state.events];
                        classes.forEach((c) => {
                            const classNum = c.salle;
                            const subject = c.module;
                          //  const description = c.enseignant;
                            const day = c.jour;
                            const startTime = c.hdebut;
                            const endTime = c.hfin;
                            //const type = c.type;
                            const events = this.state.events.slice();
                            updatedEvents.push({ day, startTime, endTime, classNum, subject });
                            this.setState({ events });
                           
                        });
                        this.setState({ events: updatedEvents });
                        this.setState({SavedData:updatedEvents})
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            });
        }
    };

    /**
     * Calls addEvents to calendar at runtime
    */
    componentDidMount() {
        this.addEventsToCalendar();
    }
    onchangeFilter(event){
    
    }

    /**
     * Creates a description box for the selected event
     * @param event - user selected event
     * @param day - day of the week
     */
    handleEventClick = (event, day) => {
  

        const { selectedEvent, descBox } = this.state;
        if (selectedEvent === event) {
            if(descBox != null){
                descBox.remove();
            }
          
            this.setState({ selectedEvent: null, descBox: null });
            return;
        }
        if (descBox != null) {
            descBox.remove();
        }

        const startTime = event.startTime;
        let startHour, startMinute;


        let newDescBox;
        if (day.includes("F") || day.includes("R")) {
            newDescBox = document.createElement('div');
            newDescBox.className = 'desc-box-right';
        } else {
            newDescBox = document.createElement('div');
            newDescBox.className = 'desc-box';
        }

        if (!newDescBox) {
            throw new Error("newDescBox is not initialized");
        }

        const descName = document.createElement('div');
        descName.innerHTML = event.subject;
        descName.className = 'eventName';

        const descText = document.createElement('div');
        
        descText.innerHTML = startTime + ' - ' + event.endTime;
        descText.className = 'desc-text';
        const profText = document.createElement('div');
        
        profText.innerHTML =  ' - ' + event.classNum;
        profText.className = 'profText';
        const closeButton = document.createElement('div');
        closeButton.innerHTML = renderToString(<Cg.CgClose />);
        closeButton.className = 'close-button';
        closeButton.onclick = (e) => { this.handleCloseBoxClick(e, newDescBox); };

        newDescBox.appendChild(closeButton);
        newDescBox.appendChild(descName);
        newDescBox.appendChild(descText);
        newDescBox.appendChild(profText);

        newDescBox.style.setProperty("--start", `${startHour + startMinute / 60}`);
        event.target.parentNode.appendChild(newDescBox);

        this.setState({ selectedEvent: event, descBox: newDescBox });
    };

    /**
     * Closes a description box for the selected event
     * @param descBox - description box for selected event
     */
    handleCloseBoxClick = (e, descBox) => {
        descBox.remove();
        this.setState({ selectedEvent: null, descBox: null });
    };

    /**
     * Renders all courses that the user has
     * @param dayOfWeek - day of the week
     */
    renderEvents = (dayOfWeek) => {
        return this.state.events.map((event) => {
            console.log(event)
            console.log(dayOfWeek)
            if (event.day.includes(dayOfWeek)) {
                const startTime = event.startTime.split(":");
                let startHour, startMinute;
                startHour = startTime[0]
                startMinute=startTime[1]
console.log(startTime)
               /* if (startTime >= 1000) { // 4 digit input
                    startHour = Math.floor(startTime / 100);
                    console.log(startHour)
                    startMinute = startTime % 100;
                } else { // 3 digit input
                    startHour = Math.floor(startTime / 100);
                    startMinute = startTime % 100;
                }
*/
                const endTime = event.endTime.split(":");
                let endHour, endMinute;
                endHour=endTime[0]
                endMinute = endTime[1]
              /*  if (endTime >= 1000) {
                    endHour = Math.floor(endTime / 100);
                    endMinute = endTime % 100;
                } else {
                    endHour = Math.floor(endTime / 100);
                    endMinute = endTime % 100;
                }*/

                const duration = (endHour - startHour) * 60 + (endMinute - startMinute);


                if (startHour >= 7 && endHour <= 21 && startHour < endHour) {
                    console.log(startHour,startMinute)
                    console.log(duration,endHour)

                    return (
                        <li
                            className={event.eventName}
                            key={event.startTime}
                            style={{
                                "--start": Number(startHour) + (Number(startMinute)) / 60,
                                "--duration": duration / 60
                            }}
                            onClick={(e) => this.handleEventClick({ ...event, target: e.currentTarget }, dayOfWeek)}
                        >
                            {/*{event.eventName}*/}
                          
                            <div className="eventNameTime">
                                {event.subject} {event.classNum} 
                            </div>
                         
                        </li>
                    );
                }
            }
        });
    };


    render() {
        return (
            <div className="wrapper1">
 <h1>Liste des Examan</h1>
       <button className="btn btn-primary" onClick={() => generatePDF(this.componentRef, {filename: 'page.pdf'})}>Download PDF</button>

                <div className="calWrapper" ref={this.componentRef}>
                    <div className="time-slot">
                        <div className="day-header"></div>
                        <ul>
                            <li>7am</li>
                            <li>8am</li>
                            <li>9am</li>
                            <li>10am</li>
                            <li>11am</li>
                            <li>12pm</li>
                            <li>1pm</li>
                            <li>2pm</li>
                            <li>3pm</li>
                            <li>4pm</li>
                            <li>5pm</li>
                            <li>6pm</li>
                            <li>7pm</li>
                            <li>8pm</li>
                            <li className="last-time">9pm</li>
                        </ul>
                    </div>
                    <div className="weekday mon">
                        <div className="day-header">
                            <p>Lundi</p>
                        </div>
                        <div className="event-container" onClick={() => this.handleEventClick(null, "M")}>
                            {this.renderEvents(daysOfWeek[0])}
                        </div>
                        <ul className="times">
                            <li className="seven-am"></li>
                            <li className="eight-am"></li>
                            <li className="nine-am"></li>
                            <li className="ten-am"></li>
                            <li className="eleven-am"></li>
                            <li className="twelve-pm"></li>
                            <li className="one-pm"></li>
                            <li className="two-pm"></li>
                            <li className="three-pm"></li>
                            <li className="four-pm"></li>
                            <li className="five-pm"></li>
                            <li className="six-pm"></li>
                            <li className="seven-pm"></li>
                            <li className="eight-pm"></li>
                            <li className="nine-pm"></li>
                        </ul>
                    </div>
                    <div className="weekday tue">
                        <div className="day-header">
                            <p>Mardi</p>
                        </div>
                        <div className="event-container" onClick={() => this.handleEventClick(null, "T")}>
                            {this.renderEvents(daysOfWeek[1])}
                        </div>
                        <ul className="times">
                            <li className="seven-am"></li>
                            <li className="eight-am"></li>
                            <li className="nine-am"></li>
                            <li className="ten-am"></li>
                            <li className="eleven-am"></li>
                            <li className="twelve-pm"></li>
                            <li className="one-pm"></li>
                            <li className="two-pm"></li>
                            <li className="three-pm"></li>
                            <li className="four-pm"></li>
                            <li className="five-pm"></li>
                            <li className="six-pm"></li>
                            <li className="seven-pm"></li>
                            <li className="eight-pm"></li>
                            <li className="nine-pm"></li>
                        </ul>
                    </div>
                    <div className="weekday wed">
                        <div className="day-header">
                            <p>Mercredi</p>
                        </div>
                        <div className="event-container" onClick={() => this.handleEventClick(null, "W")}>
                            {this.renderEvents(daysOfWeek[2])}
                        </div>
                        <ul className="times">
                            <li className="seven-am"></li>
                            <li className="eight-am"></li>
                            <li className="nine-am"></li>
                            <li className="ten-am"></li>
                            <li className="eleven-am"></li>
                            <li className="twelve-pm"></li>
                            <li className="one-pm"></li>
                            <li className="two-pm"></li>
                            <li className="three-pm"></li>
                            <li className="four-pm"></li>
                            <li className="five-pm"></li>
                            <li className="six-pm"></li>
                            <li className="seven-pm"></li>
                            <li className="eight-pm"></li>
                            <li className="nine-pm"></li>
                        </ul>
                    </div>
                    <div className="weekday thu">
                        <div className="day-header">
                            <p>Jeudi</p>
                        </div>
                        <div className="event-container" onClick={() => this.handleEventClick(null, "R")}>
                            {this.renderEvents(daysOfWeek[3])}
                        </div>
                        <ul className="times">
                            <li className="seven-am"></li>
                            <li className="eight-am"></li>
                            <li className="nine-am"></li>
                            <li className="ten-am"></li>
                            <li className="eleven-am"></li>
                            <li className="twelve-pm"></li>
                            <li className="one-pm"></li>
                            <li className="two-pm"></li>
                            <li className="three-pm"></li>
                            <li className="four-pm"></li>
                            <li className="five-pm"></li>
                            <li className="six-pm"></li>
                            <li className="seven-pm"></li>
                            <li className="eight-pm"></li>
                            <li className="nine-pm"></li>
                        </ul>
                    </div>
                    <div className="weekday fri">
                        <div className="day-header">
                            <p>Vendredi</p>
                        </div>
                        <div className="event-container" onClick={() => this.handleEventClick(null, "F")}>
                            {this.renderEvents(daysOfWeek[4])}
                        </div>
                        <ul className="times">
                            <li className="seven-am"></li>
                            <li className="eight-am"></li>
                            <li className="nine-am"></li>
                            <li className="ten-am"></li>
                            <li className="eleven-am"></li>
                            <li className="twelve-pm"></li>
                            <li className="one-pm"></li>
                            <li className="two-pm"></li>
                            <li className="three-pm"></li>
                            <li className="four-pm"></li>
                            <li className="five-pm"></li>
                            <li className="six-pm"></li>
                            <li className="seven-pm"></li>
                            <li className="eight-pm"></li>
                            <li className="nine-pm"></li>
                        </ul>
                    </div>
                </div>
                {/*<Link to="/">Nav Bar</Link>*/}
            </div>
        );
    }
}
export default Calendar;