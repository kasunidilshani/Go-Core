import axios from 'axios';

const url = 'http://localhost:4000/api/guide_add_Plan/';
// https://gocore.herokuapp.com/getguideCooperateHotels

class guide_add_Plan{

    //Create POST
    static insertGuidePlan(tripTitle,Duration,Activities,startCity,Destination,transport,Accomodation)
        {
        return axios.post(url,{
            
            text: tripTitle,Duration,Activities,startCity,Destination,transport,Accomodation
            
        });
    }
}

export default guide_add_Plan;