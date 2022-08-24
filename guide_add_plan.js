import axios from 'axios';

const url = 'http://localhost:5000/api/guide_add_Plan/';
// https://gocore.herokuapp.com/getguideCooperateHotels

class guide_add_Plan{

    //Create POST
    static insertGuidePlan(Title,Duration,startingCity,Activities,nextDestination,transportMethod,Accomodation){
        return axios.post(url,{
            
            Title:Title,
            Duration:Duration,
            startingCity:startingCity,
            Activities:Activities,
            nextDestination:nextDestination,
            transportMethod:transportMethod,
            Accomodation:Accomodation
            
        });
    }
}

export default guide_add_Plan;