import * as Fa from 'react-icons/fa';
import * as Bs from 'react-icons/bs';
import * as Im from 'react-icons/im'
import * as Ai from 'react-icons/ai';

import React from 'react'

export const NavDataEnseignent = [
    {
        title: 'Calendar',
        path: '/calendar',
        // icon: <Ci.CiCalendar />,
        icon: <Bs.BsFillCalendarFill />,
        cName: 'nav-text'
    },
    {
        title: 'Liste des surveillance',
        path: '/examcalendar',
        // icon: <Ci.CiCalendar />,
        icon: <Im.ImPencil />,
        cName: 'nav-text'
    },
    {
        title: 'exman matiere',
        path: '/exambymatiere',
        // icon: <Ci.CiCalendar />,
        icon: <Im.ImMan />,
        cName: 'nav-text'
    },
    {
        title: 'surveillance  by enseignement',
        path: '/exambyEnseignement',
        // icon: <Ci.CiCalendar />,
        icon: <Im.ImMan />,
        cName: 'nav-text'
    },
    
    {
        title: 'Emploi enseignement',
        path: '/courses',
        // icon: <Tfi.TfiNotepad />,
        icon: <Im.ImBook/>,
        cName: 'nav-text',
    },
   
    {
        title: 'Classes',
        path: '/friends',
        icon: <Fa.FaUserFriends />,
        cName: 'nav-text',
    }
]