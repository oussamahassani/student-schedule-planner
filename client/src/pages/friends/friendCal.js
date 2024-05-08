import React, {useState, useEffect, useImperativeHandle, useRef} from "react";
import "./friends.css"

/* eslint-disable react/prop-types */
const daysOfWeek = ['1', '2', '3', '4', '5', '6', '7'];

/**
 * A calendar component that displays a friend's events.
 * @param props - friend's email.
 * @returns - A element representing the calendar.
 */
function FriendCal(props, ref) {
  const { friend = '' } = props;
  const [events, setEvents] = useState([]);
  // const [selectedEvent, setSelectedEvent] = useState([])
  // const [descbox, setDescbox] = useState([])


  useEffect(() => {
    setEvents([]);
  }, [friend]);

  /**
   * Gets the friend's events from the server and updates the state with the events.
   * @param friendEmail - The email of the friend whose events to get.
   */
    function getFriendEvents(id_filiere) {
        if(id_filiere)
            {
      fetch(`/emplois/byStudent/${id_filiere}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error(`Unable to get courses for ${id_filiere}`);
          }
          return response.json();
        })
        .then((classes) => {
          const updatedEvents = [];
          classes.forEach((c) => {
            const classNum = c.salle;
            const subject = c.module;
            const description = c.enseignant;
            const day = c.jour;
            const startTime = c.hdebut;
            const endTime = c.hfin;
            const type = c.type;
            updatedEvents.push({ description, day, startTime, endTime, classNum, subject,type });
           
        });
          setEvents(updatedEvents);
        })
        .catch((error) => {
          console.error(error);
        });
    }
}

    /**
    * Clears a friends classes from the calendar
    * @param friendId - friend identifier
    */
    function clearEvents() {
      setEvents([]);
    }

    useEffect(() => {
      clearEvents();
      getFriendEvents(friend);
    }, [friend]);


  /**
   * Renders the events for a given day of the week.
   * @param dayOfWeek - The day of the week as a letter.
   * @returns - An array of elements representing the events for the given day.
   */
  const renderEvents = (dayOfWeek) => {
        return events.map((event) => {
     
                if (event.day.includes(dayOfWeek)) {
                    const startTime = event.startTime.split(":");
                    let startHour, startMinute;
                    startHour = startTime[0]
                    startMinute=startTime[1]

                    const endTime = event.endTime.split(":");
                    let endHour, endMinute;
                    endHour=endTime[0]
                    endMinute = endTime[1]
                  
    
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
                            >
                                {/*{event.eventName}*/}
                                <div className="eventNameTime">
                                    {event.subject} {event.classNum} ({event.type =="CT" ? "Cours" :event.type })
                                </div>
                            </li>
                        );
                    }
                
        };
        });
    };

  return (
    <div className="calendarWrapperF">
        <div className="calWrapperF">
            <div className="time-slotF">
                <div className="day-headerF"></div>
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
                    <li className="last-timeF">9pm</li>
                </ul>
            </div>
            <div className="weekdayF mon">
                <div className="day-headerF">
                    <p>Lundi</p>
                </div>
           
                <div className="event-containerF">
                    {renderEvents(daysOfWeek[0])}
                </div>
                <ul className="timesF">
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
            <div className="weekdayF tue">
                <div className="day-headerF">
                    <p>Mardi</p>
                </div>
                <div className="event-containerF" >
                    {renderEvents(daysOfWeek[1])}
                </div>
                <ul className="timesF">
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
            <div className="weekdayF wed">
                <div className="day-headerF">
                    <p>Mercredi</p>
                </div>
                <div className="event-containerF">
                    {renderEvents(daysOfWeek[2])}
                </div>
                <ul className="timesF">
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
            <div className="weekdayF thu">
                <div className="day-headerF">
                    <p>Jeudi</p>
                </div>
                <div className="event-containerF">
                    {renderEvents(daysOfWeek[3])}
                </div>
                <ul className="timesF">
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
            <div className="weekdayF fri">
                <div className="day-headerF">
                    <p>Vendredi</p>
                </div>
                <div className="event-containerF">
                    {renderEvents(daysOfWeek[4])}
                </div>
                <ul className="timesF">
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
    </div>
  );
}

export default FriendCal;